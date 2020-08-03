# encoding: UTF-8
#
include_controls 'microsoft-windows-server-2019-stig-baseline' do
  control 'V-93509' do
    title 'Windows Server 2019 directory service must be configured to terminate LDAP-based network connections to the directory server after thirty minutes of inactivity.'
    desc  'check', 'This applies to domain controllers. It is NA for other systems.
    Open an elevated \"Command Prompt\" (run as administrator).
    Enter \"ntdsutil\".
    At the \"ntdsutil:\" prompt, enter \"LDAP policies\".
    At the \"ldap policy:\" prompt, enter \"connections\".
    At the \"server connections:\" prompt, enter \"connect to server [host-name]\"
    (where [host-name] is the computer name of the domain controller).
    At the \"server connections:\" prompt, enter \"q\".
    At the \"ldap policy:\" prompt, enter \"show values\".
    If the value for MaxConnIdleTime is greater than \"1800\" (30 minutes) or is not specified, this is a finding.
    Enter \"q\" at the \"ldap policy:\" and \"ntdsutil:\" prompts to exit.

    Alternately, Dsquery can be used to display MaxConnIdleTime:
    Open \"Command Prompt (Admin)\".
    Enter the following command (on a single line).
    dsquery * \"cn=Default Query Policy,cn=Query-Policies,cn=Directory Service, cn=Windows NT,cn=Services,cn=Configuration,dc=[forest-name]\" -attr LDAPAdminLimits

    The quotes are required and dc=[forest-name] is the fully qualified LDAP name of the domain being reviewed (e.g., dc=disaost,dc=mil).
    If the results do not specify a \"MaxConnIdleTime\" or it has a value greater than \"1800\" (30 minutes), this is a finding.'
    desc  'fix', 'Configure the directory service to terminate LDAP-based network connections to the directory server after 30 minutes of inactivity.
    Open an elevated \"Command prompt\" (run as administrator).
    Enter \"ntdsutil\".
    At the \"ntdsutil:\" prompt, enter \"LDAP policies\".
    At the \"ldap policy:\" prompt, enter \"connections\".
    At the \"server connections:\" prompt, enter \"connect to server [host-name]\" (where [host-name] is the computer name of the domain controller).
    At the \"server connections:\" prompt, enter \"q\".
    At the \"ldap policy:\" prompt, enter \"Set MaxConnIdleTime to 1800\".
    Enter \"Commit Changes\" to save.
    Enter \"Show values\" to verify changes.
    Enter \"q\" at the \"ldap policy:\" and \"ntdsutil:\" prompts to exit.'
  end
end