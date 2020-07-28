# encoding: UTF-8

include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93329" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for firefox.exe:

      DEP:
      Enable: ON

      ASLR:
      BottomUp: ON
      ForceRelocateImages: ON"
  end
end