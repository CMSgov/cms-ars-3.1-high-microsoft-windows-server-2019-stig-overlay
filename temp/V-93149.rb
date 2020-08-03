# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93149" do
    desc  'check', "If the following registry value does not exist or is not configured as specified, this is a finding:

      Registry Hive: HKEY_LOCAL_MACHINE
      Registry Path: \\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\

      Value Name: LegalNoticeCaption

      Value Type: REG_SZ
      Value: See message title options below

      \"CMS Notice and Consent Banner\", \"US Department of Health and Human Services Warning Statement\", or an organization-defined equivalent.
      If an organization-defined title is used, it can in no case contravene or modify the language of the banner text required in WN19-SO-000150.
      Automated tools may only search for the titles defined above. If an organization-defined title is used, a manual review will be required."
    desc  'fix', "Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Local Policies >> Security Options >> \"Interactive Logon: Message title for users attempting to log on\" to \"CMS Notice and Consent Banner\", \"US Department of Health and Human Services Warning Statement\", or an organization-defined equivalent.
    If an organization-defined title is used, it can in no case contravene or modify the language of the message text required in WN19-SO-000150."
  end
end