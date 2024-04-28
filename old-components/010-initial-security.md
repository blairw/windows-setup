## INITIAL SECURITY SETUP

### Basics

- Turn off autoplay/autorun
- Run `taskmgr` and disable unwanted startup applications

### Block AAD/Workplace Join

```
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin
DWORD BlockAADWorkplaceJoin = 1
```

### Block Update to Windows 11

Use the `TargetReleaseVersionInfo` method documented at https://www.askwoody.com/forums/topic/further-evidence-of-forced-upgrade-to-win10-version-2004-possibly-due-to-a-pause-updates-bug/#post-2275152

The following commands in `sudo cmd`

```
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /f /v TargetReleaseVersion /t REG_DWORD /d 1
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /f /v TargetReleaseVersionInfo /t REG_SZ /d 22H2
```

Be sure to check latest release version (e.g., `22H2`) as per https://en.wikipedia.org/wiki/Windows_10

### Sensible Start Menu

- Disable all "Cloud content search"
- `HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows`
	- Add `Explorer`, and in it, add `DisableSearchBoxSuggestions` DWORD (32-bit) = 1
- Follow further instructions at https://pureinfotech.com/disable-web-search-windows-10-version-1803/
- Remove "recommended" section: https://www.thewindowsclub.com/show-or-hide-recommended-list-in-start-menu-on-windows-11
	- `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows`
	- Add `Explorer`, and in it, add `HideRecentlyAddedApps` DWORD (32-bit) = 1


