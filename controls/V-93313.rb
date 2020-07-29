# encoding: UTF-8

include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93313" do
    desc  "fix", "Ensure Exploit Protection system-level mitigation, \"Data Execution Prevention (DEP)\", is turned on.  The default configuration in Exploit Protection is \"On by default\" which meets this requirement.

      Open \"Windows Defender Security Center\".
      Select \"App & browser control\".
      Select \"Exploit protection settings\".
      Under \"System settings\", configure \"Data Execution Prevention (DEP)\" to \"On by default\" or \"Use default (<On>)\"."
  end
end