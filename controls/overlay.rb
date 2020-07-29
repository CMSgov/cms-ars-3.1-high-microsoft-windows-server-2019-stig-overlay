# encoding: UTF-8

include_controls 'microsoft-windows-server-2019-stig-baseline' do
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

end