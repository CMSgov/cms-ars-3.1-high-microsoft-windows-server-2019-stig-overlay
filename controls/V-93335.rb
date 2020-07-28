# encoding: UTF-8

include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93335" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for iexplore.exe:

      DEP:
      Enable: ON

      ASLR:
      BottomUp: ON
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