# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93489" do
    title "Windows Server 2019 must have the CMS Interoperability Root Certificate Authority (CA) cross-certificates installed in the Untrusted Certificates Store on unclassified systems."
    desc  "To ensure users do not experience denial of service when performing certificate-based authentication to CMS websites due to the system chaining to a root other than CMS Root CAs, the CMS Interoperability Root CA cross-certificates must be installed in the Untrusted Certificate Store. This requirement only applies to unclassified systems."
    desc  "check", "This is applicable to unclassified systems. It is NA for others.
    Verify that the CMS Interoperability Root Certificate Authority (CA) cross-certificates is installed in the Untrusted Certificates Store on unclassified systems."
    desc  "fix", "Install the CMS Interoperability Root CA cross-certificates on unclassified systems."
    
    describe "For this CMS ARS 3.1 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 3.1 overlay, this control must be reviewed manually"
    end
  end
end