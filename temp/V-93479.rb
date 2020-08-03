# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93479" do
    title "Windows Server 2019 password history must be configured to 12 passwords remembered."
    desc  "A system is more vulnerable to unauthorized access when system users recycle the same password several times without being required to change to a unique password on a regularly scheduled basis. This enables users to effectively negate the purpose of mandating periodic password changes. The default value is \"12\" for Windows domain systems. CMS has decided this is the appropriate value for all Windows systems."
    desc  "check", "Verify the effective setting in Local Group Policy Editor.
      Run \"gpedit.msc\".
      Navigate to Local Computer Policy >> Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Password Policy.
      If the value for \"Enforce password history\" is less than \"12\" passwords remembered, this is a finding.

      For server core installations, run the following command:
      Secedit /Export /Areas SecurityPolicy /CFG C:\\Path\\FileName.Txt
      If \"PasswordHistorySize\" is less than \"12\" in the file, this is a finding."
    desc  "fix", "Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Password Policy >> \"Enforce password history\" to \"12\" passwords remembered."
  end
end