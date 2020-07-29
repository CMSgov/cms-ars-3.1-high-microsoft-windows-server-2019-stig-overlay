# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93485" do
    title "Windows Server 2019 PKI certificates associated with user accounts must be issued by a CMS PKI or an approved External Certificate Authority (ECA)."

    describe "For this CMS ARS 3.1 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 3.1 overlay, this control must be reviewed manually"
    end
  end
end