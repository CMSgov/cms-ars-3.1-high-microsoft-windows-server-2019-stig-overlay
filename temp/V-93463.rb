# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93463" do
    title "Windows Server 2019 minimum password length must be configured to 15 characters."
    desc  "check", "Verify the effective setting in Local Group Policy Editor.

      Run \"gpedit.msc\".
      Navigate to Local Computer Policy >> Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Password Policy.
      If the value for the \"Minimum password length,\" is less than \"15\" characters, this is a finding.

      For server core installations, run the following command:
      Secedit /Export /Areas SecurityPolicy /CFG C:\\Path\\FileName.Txt
      If \"MinimumPasswordLength\" is less than \"15\" in the file, this is a finding."
    desc  "fix", "Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Password Policy >> \"Minimum password length\" to \"15\" characters."
  end
end