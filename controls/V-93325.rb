# encoding: UTF-8

include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93325" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for chrome.exe:

      DEP:
      Enable: ON"
  end
end