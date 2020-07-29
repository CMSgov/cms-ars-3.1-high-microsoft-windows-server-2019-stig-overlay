# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93363" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for WINWORD.EXE:

      DEP:
      Enable: ON

      ASLR:
      ForceRelocateImages: ON

      Payload:
      EnableExportAddressFilter: ON
      EnableExportAddressFilterPlus: ON
      EnableImportAddressFilter: ON
      EnableRopStackPivot: ON
      EnableRopCallerCheck: ON
      EnableRopSimExec: ON"
  end
end