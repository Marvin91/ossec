<ossec_config>
  <client>
  </client>

  <syscheck>
    <!-- Frequency that syscheck is executed - default to every 22 hours -->
    <frequency>79200</frequency>
    
    <!-- Directories to check  (perform all possible verifications) -->
    <directories check_all="yes">/etc,/usr/bin,/usr/sbin</directories>
    <directories check_all="yes">/bin,/sbin</directories>

    <!-- Files/directories to ignore -->
    <ignore>/etc/mtab</ignore>
    <ignore>/etc/mnttab</ignore>
    <ignore>/etc/hosts.deny</ignore>
    <ignore>/etc/mail/statistics</ignore>
    <ignore>/etc/random-seed</ignore>
    <ignore>/etc/adjtime</ignore>
    <ignore>/etc/httpd/logs</ignore>
    <ignore>/etc/utmpx</ignore>
    <ignore>/etc/wtmpx</ignore>
    <ignore>/etc/cups/certs</ignore>
    <ignore>/etc/dumpdates</ignore>
    <ignore>/etc/svc/volatile</ignore>

    <!-- Windows files to ignore -->
    <ignore>C:\WINDOWS/System32/LogFiles</ignore>
    <ignore>C:\WINDOWS/Debug</ignore>
    <ignore>C:\WINDOWS/WindowsUpdate.log</ignore>
    <ignore>C:\WINDOWS/iis6.log</ignore>
    <ignore>C:\WINDOWS/system32/wbem/Logs</ignore>
    <ignore>C:\WINDOWS/system32/wbem/Repository</ignore>
    <ignore>C:\WINDOWS/Prefetch</ignore>
    <ignore>C:\WINDOWS/PCHEALTH/HELPCTR/DataColl</ignore>
    <ignore>C:\WINDOWS/SoftwareDistribution</ignore>
    <ignore>C:\WINDOWS/Temp</ignore>
    <ignore>C:\WINDOWS/system32/config</ignore>
    <ignore>C:\WINDOWS/system32/spool</ignore>
    <ignore>C:\WINDOWS/system32/CatRoot</ignore>
  </syscheck>

  <rootcheck>
    <rootkit_files>ossec/etc/shared/rootkit_files.txt</rootkit_files>
    <rootkit_trojans>ossec/etc/shared/rootkit_trojans.txt</rootkit_trojans>
    <system_audit>ossec/etc/shared/system_audit_rcl.txt</system_audit>
    <system_audit>ossec/etc/shared/cis_debian_linux_rcl.txt</system_audit>
    <system_audit>ossec/etc/shared/cis_rhel_linux_rcl.txt</system_audit>
    <system_audit>ossec/etc/shared/cis_rhel5_linux_rcl.txt</system_audit>
  </rootcheck>

  <active-response>
    <disabled>yes</disabled>
  </active-response>

  <!-- Files to monitor (localfiles) -->

  <localfile>
    <log_format>syslog</log_format>
    <location>/var/log/system.log</location>
  </localfile>
</ossec_config>
