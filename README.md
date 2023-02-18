# Blair Windows Setup Notes

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





## INITIAL PERFORMANCE SETUP

### Old Alt+Tab

Adapted from https://winaero.com/enable-classic-alttab-dialog-in-windows-11/

```
Computer\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer
DWORD AltTabSettings = 1
```

**This will require a reboot.**





## SOFTWARE SETUP

### Chocolatey

- Install
- Then install `sudo`

And then:

```
sudo cmd
cinst -y 7zip.install ant-renamer audacity audacity-lame audacity-ffmpeg
cinst -y ChocolateyGUI chromium dropbox everything firefox git git-fork greenshot
cinst -y handbrake.install hwinfo irfanview irfanviewplugins libreoffice-still logitech-options
cinst -y monitorian mp3tag nextcloud-client notepadplusplus.install
cinst -y powertoys processhacker.install signal spotify sumatrapdf.install tabby thunderbird
cinst -y vlc.install zotero zoom vscodium.install whatsapp
```



Only if you want battery bar:

```
cinst -y batterybar
```

Only if you want xampp:

```
cinst -y xampp-81
```

Only if you want docker:

```
cinst -y docker-desktop
```

Try to install `adobe-creative-cloud` but you might need to `--ignore-checksums` for this one.

### Microsoft Office

- Manually install from office.com



## WSL AND UBUNTU

Follow instructions at https://docs.microsoft.com/en-us/windows/wsl/install - be careful not to install using other legacy methods.

### Ubuntu handy installs

```
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install btop ffmpeg lolcat neofetch pandoc rclone youtube-dl
```

### Git config

Note: For GitHub, you'll need to generate a Personal Access Token (PAT) at https://github.com/settings/tokens

```
git config --global credential.helper store
git config --global user.name "Blair Wang"
git config --global user.email "EMAIL_ADDRESS_GOES_HERE"
```

### Cron

Make sure your user account is actually added to the `crontab` group otherwise nothing will happen:

```
sudo usermod -a -G crontab blair
```

Check cron status (`start` and `stop` only if needed):

```
sudo service cron status
sudo service cron start
sudo service cron stop
```





## DEVICE-SPECIFIC

### Microsoft Surface only

- Colour profile: sRGB
- Refresh rate: set to 120 Hz
- Turn off adaptive colour





## SENSIBLE UI

### General UI Settings

- Taskbar icons on the left
- Taskbar disable Search, Task View, Widgets, Chat
- UI sound effects off
- Desktop icons show them properly

### Microsoft Edge

If you must use Microsoft Edge (personally I am phasing it out of my setup in favour of chromium):

- Set sensible Search settings
- Turn off "Microsoft Rewards"
- Turn on "Do Not Track"
- Turn OFF payment methods check
- Turn OFF Microsoft Rewards
- Turn OFF Microsoft Defender SmartScreen
- Turn OFF Secure DNS
- Turn OFF Web Service for Navigation Errors
- Turn OFF Suggest Similar Sites
- Turn OFF Time Money Shopping Edge
- Turn OFF Discover
- Turn OFF all search Suggestions
- Change search engine so it is not Bing
- Turn off edge tabs thing


## BLAIR-SPECIFIC

### mypath

- Make the folder `C:\00blair\mypath`
- Add this folder to `PATH`
- Shortcut this folder into itself
- Add other handy shortcuts:
	- `vsc` &rarr; VSCodium

### Fonts to Install

- Courier Prime Code
- Fira Sans
- Josefin Sans
- Josefin Slab
- Montserrat


### Logitech Options

- Install manually, do not rely on chocolatey.


### Nextcloud Calendar

Windows Calendar isn't that great; for example, it's isn't so easy to transfer an event from one Calendar to another.
Honestly, the NextCloud Calendar web app in the browser is probably better.
But it's probably not a terrible idea to have this set up anyway (e.g., for offline use).

Instructions: https://docs.nextcloud.com/server/latest/user_manual/en/groupware/sync_windows10.html


### Hosts file

```
sudo notepad C:\Windows\System32\drivers\etc\hosts
```

