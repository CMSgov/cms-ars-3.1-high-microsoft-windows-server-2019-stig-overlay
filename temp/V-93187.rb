# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
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
end