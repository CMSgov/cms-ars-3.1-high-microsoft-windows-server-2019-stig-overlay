# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control "V-93483" do
    title "Windows Server 2019 domain Controller PKI certificates must be issued by the CMS PKI or an approved External Certificate Authority (ECA)."
    desc  "check", "This applies to domain controllers. It is NA for other systems.
      Run \"MMC\".
      Select \"Add/Remove Snap-in\" from the \"File\" menu.
      Select \"Certificates\" in the left pane and click the \"Add >\" button.
      Select \"Computer Account\" and click \"Next\".
      Select the appropriate option for \"Select the computer you want this snap-in to manage\" and click \"Finish\".
      Click \"OK\".
      Select and expand the Certificates (Local Computer) entry in the left pane.
      Select and expand the Personal entry in the left pane.
      Select the Certificates entry in the left pane. In the right pane, examine the \"Issued By\" field for the certificate to determine the issuing CA.
      If the \"Issued By\" field of the PKI certificate being used by the domain controller does not indicate the issuing CA is part of the CMS PKI or an approved ECA, this is a finding.
      If the certificates in use are issued by a CA authorized by the Component's CIO, this is a CAT II finding."
    desc  "fix", "Obtain a server certificate for the domain controller issued by the CMS PKI or an approved ECA."

    describe "For this CMS ARS 3.1 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 3.1 overlay, this control must be reviewed manually"
    end
  end
end