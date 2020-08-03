# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93567" do
    title "Windows Server 2019 must employ automated mechanisms to determine the state of system components with regard to flaw remediation every 72 hours."
    desc  "Without the use of automated mechanisms to scan for security flaws on a continuous and/or periodic basis, the operating system or other system components may remain vulnerable to the exploits presented by undetected software flaws."
    desc  "check", "Verify the operating system employs automated mechanisms to determine the state of system components with regard to flaw remediation no less often than once every seventy-two (72) hours. If it does not, this is a finding."
    desc  "fix", "Configure the operating system to employ automated mechanisms to determine the state of system components with regard to flaw remediation no less often than once every seventy-two (72) hours."

    describe "A manual review is required to verify the operating system employs automated mechanisms to determine the state of system components with regard to flaw remediation no less often than once every seventy-two (72) hours. If it does not, this is a finding." do	
      skip "A manual review is required to verify the operating system employs automated mechanisms to determine the state of system components with regard to flaw remediation no less often than once every seventy-two (72) hours. If it does not, this is a finding."	
    end
  end
end