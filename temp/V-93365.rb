# encoding: UTF-8

include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93365" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for wmplayer.exe:

      DEP:
      Enable: ON

      Payload:
      EnableRopStackPivot: ON
      EnableRopCallerCheck: ON
      EnableRopSimExec: ON"
  end
end