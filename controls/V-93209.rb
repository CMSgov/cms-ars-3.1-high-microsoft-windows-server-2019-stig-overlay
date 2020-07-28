# encoding: UTF-8

include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93209" do
    title "Windows Server 2019 manually managed application account passwords must be changed at least annually or when a system administrator with knowledge of the password leaves the organization."
    desc  "Setting application account passwords to expire may cause applications to stop functioning. However, not changing them on a regular basis exposes them to attack. If managed service accounts are used, this alleviates the need to manually change application account passwords."
    desc  "rationale", ""
    desc  'check', "Determine if manually managed application/service accounts exist. If none exist, this is NA.
      If passwords for manually managed application/service accounts are not changed at least annually or when an administrator with knowledge of the password leaves the organization, this is a finding.
      Identify manually managed application/service accounts.
      To determine the date a password was last changed:

      Domain controllers:
      Open \"PowerShell\".
      Enter \"Get-AdUser -Identity [application account name] -Properties PasswordLastSet | FT Name, PasswordLastSet\", where [application account name] is the name of the manually managed application/service account.
      If the \"PasswordLastSet\" date is more than one year old, this is a finding.

      Member servers and standalone systems:
      Open \"Command Prompt\".
      Enter 'Net User [application account name] | Find /i \"Password Last Set\"', where [application account name] is the name of the manually managed application/service account.
      If the \"Password Last Set\" date is more than one year old, this is a finding."
    desc  'fix', "Change passwords for manually managed application/service accounts at least annually or when an administrator with knowledge of the password leaves the organization.
      It is recommended that system-managed service accounts be used whenever possible."
    impact 0.5
    tag 'severity': nil
    tag 'gtitle': 'SRG-OS-000480-GPOS-00227'
    tag 'gid': 'V-93209'
    tag 'rid': 'SV-103297r1_rule'
    tag 'stig_id': 'WN19-00-000060'
    tag 'fix_id': 'F-99455r1_fix'
    tag 'cci': ["CCI-000366"]
    tag 'nist': ["CM-6 b", "Rev_4"]

    application_accounts = input('application_accounts_domain')
    application_accounts_local = input('application_accounts_local')

    domain_role = command('wmic computersystem get domainrole | Findstr /v DomainRole').stdout.strip

    if domain_role == '4' || domain_role == '5'
      application_accounts.each do |user|
        password_set_date = json({ command: "Get-ADUser -Identity #{user} -Properties PasswordLastSet | Where-Object {$_.PasswordLastSet -le (Get-Date).AddDays(-365)} | Select-Object -ExpandProperty PasswordLastSet | ConvertTo-Json" })
        date = password_set_date['DateTime']
        if date.nil?
          describe "Application Accounts are all within 365 days since password change #{user}" do
            skip "Application Accounts are all within 365 days since password change #{user}"
          end
        else
          describe 'Password Last Set' do
            it "Application Account #{user} Password Last Set Date is" do
              failure_message = "Password Date should not be more that 365 Days: #{date}"
              expect(date).to be_empty, failure_message
            end
          end
        end
      end
    end
    if domain_role != '4' || domain_role != '5'
      application_accounts_local.each do |user|
        local_password_set_date = json({ command: "Get-LocalUser -name #{user} | Where-Object {$_.PasswordLastSet -le (Get-Date).AddDays(-365)} | Select-Object -ExpandProperty PasswordLastSet | ConvertTo-Json" })
        date = local_password_set_date['DateTime']
        if date.nil?
          describe "Application Accounts are all within 365 days since password change #{user}" do
            skip "Application Accounts are all within 365 days since password change #{user}"
          end
        else
          describe 'Password Last Set' do
            it "Application Account #{user} Password Last Set Date is" do
              failure_message = "Password Date should not be more that 365 Days: #{date}"
              expect(date).to be_empty, failure_message
            end
          end
        end
      end
    end
  end
end