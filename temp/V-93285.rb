# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93285" do
    title "Windows Server 2019 maximum age for machine account passwords must be configured to 60 days or less."
    desc  "Computer account passwords are changed automatically on a regular basis. This setting controls the maximum password age that a machine account may have. This must be set to no more than 60 days, ensuring the machine changes its password bi-monthly."
    desc  "check", "If the following registry value does not exist or is not configured as specified, this is a finding:

      Registry Hive: HKEY_LOCAL_MACHINE
      Registry Path: \\SYSTEM\\CurrentControlSet\\Services\\Netlogon\\Parameters\\

      Value Name: MaximumPasswordAge

      Value Type: REG_DWORD
      Value: 0x0000001e (60) (or less, but not 0)"
    desc  "fix", "Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Local Policies >> Security Options >> \"Domain member: Maximum machine account password age\" to \"60\" or less (excluding \"0\", which is unacceptable)."
  end
end