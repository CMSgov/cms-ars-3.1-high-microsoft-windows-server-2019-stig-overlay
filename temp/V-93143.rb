# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93143" do
    title "Windows Server 2019 must have the period of time before the bad logon counter is reset configured to 120 minutes or greater."
    desc  'check', "Verify the effective setting in Local Group Policy Editor.
      Run \"gpedit.msc\".
      Navigate to Local Computer Policy >> Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Account Lockout Policy.
      If the \"Reset account lockout counter after\" value is less than \"120\" minutes, this is a finding.
      For server core installations, run the following command:
      Secedit /Export /Areas SecurityPolicy /CFG C:\\Path\\FileName.Txt
      If \"ResetLockoutCount\" is less than \"120\" in the file, this is a finding."
    desc  'fix', "Configure the policy value for Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Account Lockout Policy >> \"Reset account lockout counter after\" to at least \"120\" minutes."
  end
end