# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93487" do
    title "Windows Server 2019 must have the CMS Root Certificate Authority (CA) certificates installed in the Trusted Root Store."
    desc  "To ensure secure CMS websites and CMS-signed code are properly validated, the system must trust the CMS Root CAs. The CMS root certificates will ensure that the trust chain is established for server certificates issued from the CMS CAs."
    desc  "check", "Verify the CMS Root CA certificates are installed in the Trusted Root Store."
    desc  "fix", "Install the CMS Root CA certificates."
  
    describe "For this CMS ARS 3.1 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 3.1 overlay, this control must be reviewed manually"
    end
  end
end