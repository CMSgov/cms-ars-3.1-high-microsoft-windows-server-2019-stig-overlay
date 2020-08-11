# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93145" do
    title "Windows Server 2019 account lockout duration must be configured to 0."
    desc  'check', "Verify the effective setting in Local Group Policy Editor.
      Run \"gpedit.msc\".
      Navigate to Local Computer Policy >> Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Account Lockout Policy.
      If the \"Account lockout duration\" is not 0, this is a finding.

      For server core installations, run the following command:
      Secedit /Export /Areas SecurityPolicy /CFG C:\\Path\\FileName.Txt
      If \"LockoutDuration\" is not 0 in the file, this is a finding.
      Configuring this to \"0\", requiring an administrator to unlock the account, is more restrictive and is not a finding."
    desc  'fix', "Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Account Lockout Policy >> \"Account lockout duration\" to 0.
      A value of \"0\" requires an administrator to unlock the account."

    os_type = command('Test-Path "$env:windir\explorer.exe"').stdout.strip
    
    if os_type == 'False'
      describe 'This system is a Server Core Installation, and a manual check will need to be performed with command Secedit /Export /Areas User_Rights /cfg c:\\path\\filename.txt' do
        skip 'This system is a Server Core Installation, and a manual check will need to be performed with command Secedit /Export /Areas User_Rights /cfg c:\\path\\filename.txt'
      end
    else
      describe security_policy do
        its('LockoutDuration') { should cmp == 0 }
      end
    end
  end
end