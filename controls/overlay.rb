# encoding: UTF-8

include_controls "microsoft-windows-server-2019-stig-baseline" do

  control "V-93019" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93021" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93023" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93183" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93185" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93187" do
    title "The Windows Server 2019 time service must synchronize with an appropriate CMS time source."
    desc  'check', "Review the Windows time service configuration.
    Open an elevated \"Command Prompt\" (run as administrator).
    Enter \"W32tm /query /configuration\".
    Domain-joined systems (excluding the domain controller with the PDC emulator role):
    If the value for \"Type\" under \"NTP Client\" is not \"NT5DS\", this is a finding.

    Other systems:
    If systems are configured with a \"Type\" of \"NTP\", including standalone systems and the domain controller with the PDC Emulator role, and do not have a CMS time server defined for \"NTPServer\", this is a finding.

    CMS-approved time servers include:
    - NIST Internet Time Servers (http://tf.nist.gov/tf-cgi/servers.cgi)
    - U.S. Naval Observatory Stratum-1 NTP Servers (http://tycho.usno.navy.mil/ntp.html); and
    - CMS designated internal NTP time servers providing an NTP Stratum-2 service to the above servers

    To determine the domain controller with the PDC Emulator role:
    Open \"PowerShell\".
    Enter \"Get-ADDomain | FT PDCEmulator\"."
    desc  'fix', "Configure the system to synchronize time with an appropriate CMS time source.
    Domain-joined systems use NT5DS to synchronize time from other systems in the domain by default.
    If the system needs to be configured to an NTP server, configure the system to point to an authorized time server by setting the policy value for Computer Configuration >> Administrative Templates >> System >> Windows Time Service >> Time Providers >> \"Configure Windows NTP Client\" to \"Enabled\", and configure the \"NtpServer\" field to point to an appropriate CMS time server.

    CMS-approved time servers include:
    - NIST Internet Time Servers (http://tf.nist.gov/tf-cgi/servers.cgi)
    - U.S. Naval Observatory Stratum-1 NTP Servers (http://tycho.usno.navy.mil/ntp.html); and
    - CMS designated internal NTP time servers providing an NTP Stratum-2 service to the above servers

    Time synchronization will occur through a hierarchy of time servers down to the local level. Clients and lower-level servers will synchronize with an authorized time server in the hierarchy."
  end

  control "V-93199" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93201" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93203" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93313" do
    desc  "fix", "Ensure Exploit Protection system-level mitigation, \"Data Execution Prevention (DEP)\", is turned on.  The default configuration in Exploit Protection is \"On by default\" which meets this requirement.

    Open \"Windows Defender Security Center\".
    Select \"App & browser control\".
    Select \"Exploit protection settings\".
    Under \"System settings\", configure \"Data Execution Prevention (DEP)\" to \"On by default\" or \"Use default (<On>)\"."
  end

  control "V-93315" do
    desc  "fix", "Ensure Exploit Protection system-level mitigation, \"Control flow guard (CFG)\", is turned on. The default configuration in Exploit Protection is \"On by default\" which meets this requirement.

    Open \"Windows Defender Security Center\".
    Select \"App & browser control\".
    Select \"Exploit protection settings\".
    Under \"System settings\", configure \"Control flow guard (CFG)\" to \"On by default\" or \"Use default (<On>)\"."
  end

  control "V-93317" do
    desc  "fix", "Ensure Exploit Protection system-level mitigation, \"Validate exception chains (SEHOP)\", is turned on. The default configuration in Exploit Protection is \"On by default\" which meets this requirement.

    Open \"Windows Defender Security Center\".
    Select \"App & browser control\".
    Select \"Exploit protection settings\".
    Under \"System settings\", configure \"Validate exception chains (SEHOP)\" to \"On by default\" or \"Use default (<On>)\"."
  end

  control "V-93319" do
    desc  "fix", "Ensure Exploit Protection system-level mitigation, \"Validate heap integrity\" is turned on. The default configuration in Exploit Protection is \"On by default\" which meets this requirement.

    Open \"Windows Defender Security Center\".
    Select \"App & browser control\".
    Select \"Exploit protection settings\".
    Under \"System settings\", configure \"Validate heap integrity\" to \"On by default\" or \"Use default (<On>)\"."
  end

  control "V-93321" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for Acrobat.exe:

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

  control "V-93323" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for AcroRd32.exe:

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

  control "V-93325" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for chrome.exe:

    DEP:
    Enable: ON"
  end

  control "V-93327" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for EXCEL.EXE:

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

  control "V-93329" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for firefox.exe:

    DEP:
    Enable: ON

    ASLR:
    BottomUp: ON
    ForceRelocateImages: ON"
  end

  control "V-93331" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for FLTLDR.EXE:

    DEP:
    Enable: ON

    ImageLoad:
    BlockRemoteImageLoads: ON

    Payload:
    EnableExportAddressFilter: ON
    EnableExportAddressFilterPlus: ON
    EnableImportAddressFilter: ON
    EnableRopStackPivot: ON
    EnableRopCallerCheck: ON
    EnableRopSimExec: ON

    Child Process:
    DisallowChildProcessCreation: ON"
  end

  control "V-93333" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for GROOVE.EXE:

    DEP:
    Enable: ON

    ASLR:
    ForceRelocateImages: ON

    ImageLoad:
    BlockRemoteImageLoads: ON

    Payload:
    EnableExportAddressFilter: ON
    EnableExportAddressFilterPlus: ON
    EnableImportAddressFilter: ON
    EnableRopStackPivot: ON
    EnableRopCallerCheck: ON
    EnableRopSimExec: ON

    Child Process:
    DisallowChildProcessCreation: ON"
  end

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

  control "V-93337" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for INFOPATH.EXE:

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

  control "V-93339" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for java.exe, javaw.exe, and javaws.exe:

    DEP:
    Enable: ON

    Payload:
    EnableExportAddressFilter: ON
    EnableExportAddressFilterPlus: ON
    EnableImportAddressFilter: ON
    EnableRopStackPivot: ON
    EnableRopCallerCheck: ON
    EnableRopSimExec: ON"
  end

  control "V-93341" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for lync.exe:

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

  control "V-93343" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for MSACCESS.EXE:

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

  control "V-93345" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for MSPUB.EXE:

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

  control "V-93347" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for OIS.EXE:

    DEP:
    Enable: ON

    Payload:
    EnableExportAddressFilter: ON
    EnableExportAddressFilterPlus: ON
    EnableImportAddressFilter: ON
    EnableRopStackPivot: ON
    EnableRopCallerCheck: ON
    EnableRopSimExec: ON"
  end

  control "V-93349" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for OneDrive.exe:

    DEP:
    Enable: ON

    ASLR:
    ForceRelocateImages: ON

    ImageLoad:
    BlockRemoteImageLoads: ON

    Payload:
    EnableExportAddressFilter: ON
    EnableExportAddressFilterPlus: ON
    EnableImportAddressFilter: ON
    EnableRopStackPivot: ON
    EnableRopCallerCheck: ON
    EnableRopSimExec: ON"
  end

  control "V-93351" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for OUTLOOK.EXE:

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

  control "V-93353" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for plugin-container.exe:

    DEP:
    Enable: ON

    Payload:
    EnableExportAddressFilter: ON
    EnableExportAddressFilterPlus: ON
    EnableImportAddressFilter: ON
    EnableRopStackPivot: ON
    EnableRopCallerCheck: ON
    EnableRopSimExec: ON"
  end

  control "V-93355" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for POWERPNT.EXE:

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

  control "V-93357" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for PPTVIEW.EXE:

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

  control "V-93359" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for VISIO.EXE:

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

  control "V-93361" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for VPREVIEW.EXE:

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

  control "V-93365" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for wmplayer.exe:

    DEP:
    Enable: ON

    Payload:
    EnableRopStackPivot: ON
    EnableRopCallerCheck: ON
    EnableRopSimExec: ON"
  end

  control "V-93367" do
    desc  "fix", "Ensure the following mitigations are turned \"ON\" for wordpad.exe:

    DEP:
    Enable: ON

    Payload:
    EnableExportAddressFilter: ON
    EnableExportAddressFilterPlus: ON
    EnableImportAddressFilter: ON
    EnableRopStackPivot: ON
    EnableRopCallerCheck: ON
    EnableRopSimExec: ON"
  end

  control "V-93425" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93427" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93429" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93431" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93433" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93435" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93453" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93455" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

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

  control "V-93485" do
    title "Windows Server 2019 PKI certificates associated with user accounts must be issued by a CMS PKI or an approved External Certificate Authority (ECA)."

    describe "For this CMS ARS 3.1 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 3.1 overlay, this control must be reviewed manually"
    end
  end

  control "V-93487" do
    title "Windows Server 2019 must have the CMS Root Certificate Authority (CA) certificates installed in the Trusted Root Store."
    desc  "To ensure secure CMS websites and CMS-signed code are properly validated, the system must trust the CMS Root CAs. The CMS root certificates will ensure that the trust chain is established for server certificates issued from the CMS CAs."
    desc  "check", "Verify the CMS Root CA certificates are installed in the Trusted Root Store."
    desc  "fix", "Install the CMS Root CA certificates."
  
    describe "For this CMS ARS 3.1 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 3.1 overlay, this control must be reviewed manually"
    end
  end
  
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

  control "V-93491" do
    impact 0.0
    desc "caveat", "Not applicable for this CMS ARS 3.1 overlay, since the CCEB is not applicable to CMS"
  end

  control "V-93499" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not mandatory in CMS ARS 3.1"
  end

  control "V-93501" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not mandatory in CMS ARS 3.1"
  end

  control "V-93543" do
    impact 0.0
    desc "caveat", "This is Not Applicable since the related security control is not included in CMS ARS 3.1"
  end

  control "V-93565" do
    desc  "fix", "Ensure Exploit Protection system-level mitigation, \"Randomize memory allocations (Bottom-Up ASLR)\" is turned on. The default configuration in Exploit Protection is \"On by default\" which meets this requirement.
      Open \"Windows Defender Security Center\".
      Select \"App & browser control\".
      Select \"Exploit protection settings\".
      Under \"System settings\", configure \"Randomize memory allocations
      (Bottom-Up ASLR)\" to \"On by default\" or \"Use default (<On>)\"."
  end

end