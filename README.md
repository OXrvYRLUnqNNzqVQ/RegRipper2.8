RegRipper2.8
============

RegRipper version 2.8 Linux port

Ref: https://linuxconfig.org/how-to-install-regripper-registry-data-extraction-tool-on-linux

### Installing ###

Install depends:
```console
sudo apt-get update
sudo apt-get install cpanminus make unzip wget
```

Run install script:
```console
sudo sh install.sh
```

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is the GitHub repository for RegRipper version 2.8

Updates 21090128
- added Time::Local module 
  - this allows plugins to be written that parse string-based date/time stamps, converting 
    them to epochs (for timelining, etc.)
- modified C:\Perl\site\lib\Parse\Win32Registry\WinNT\Key.pm
  - extract access_bits and largest_subkey_name_length values from Key node structure
  - call 'get_access_bits()', 'get_largest_subkey_name_lenght()' to retrieve the values for parsing/display
  - IAW https://github.com/msuhanov/regf/blob/master/Windows%20registry%20file%20format%20specification.md

Note: The modifications to Key.pm are 'compiled' into the EXE versions of RegRipper.  In order to fully take
advantage of them with the .pl versions:
- got to \Perl\site\lib\Parse\Win32Registry\WinNT\
- rename Key.pm to Key_old.pm 
- copy Key.pm from this distro to the folder
