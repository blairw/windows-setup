# Blair Windows Setup Notes

## Microsoft Surface only

- Colour profile: sRGB
- Refresh rate: set to 120 Hz
- Turn off adaptive colour


## Security

### Basics

- Turn off autoplay
- Unlink OneDrive


### Block AAD/Workplace Join


```
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin
DWORD BlockAADWorkplaceJoin = 1
```

### Block Web Search Results in Start Menu

- Disable all "Cloud content search"
- `HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows`
  - Add `Explorer`, and in it, add `DisableSearchBoxSuggestions` DWORD (32-bit) = 1


## Old Alt+Tab

Adapted from https://winaero.com/enable-classic-alttab-dialog-in-windows-11/

```
Computer\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer
DWORD AltTabSettings = 1
```

**This will require a reboot.**


## Chocolatey

- https://docs.chocolatey.org/en-us/choco/setup

```
cinst -y sudo ChocolateyGUI dropbox nextcloud-client
cinst -y firefox greenshot notepadplusplus.install atom.install sumatrapdf.install vscodium.install thunderbird
cinst -y irfanview irfanviewplugins spotify vlc
cinst -y 7zip.install everything microsoft-windows-terminal
```



## Install WSL

- Follow instructions at https://docs.microsoft.com/en-us/windows/wsl/install
- **This will require a reboot.**
- Note that Ubuntu will be automatically installed so **you do NOT need to download Ubuntu from the App Store**
- Check WSL version and set to WSL1 for SSD performance...

```
wsl -l -v  # check current version
wsl --set-version Ubuntu 1
```

- Ubuntu setup

```zsh
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install neofetch

git config --global credential.helper store

git config --global user.email "EMAIL_ADDRESS_GOES_HERE"
git config --global user.name "Blair Wang"
```

For GitHub, you'll need to generate a Personal Access Token (PAT) at https://github.com/settings/tokens






## UI Settings

### General UI Settings

- Taskbar icons on the left
- Taskbar disable Search, Task View, Widgets, Chat
- UI sound effects off
- Desktop icons show them properly

### Start Menu

Start menu remove recommended section:

- https://www.thewindowsclub.com/show-or-hide-recommended-list-in-start-menu-on-windows-11
- `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows`
  - Add `Explorer`, and in it, add `HideRecentlyAddedApps` DWORD (32-bit) = 1

### Microsoft Edge

- Set sensible Search settings
- Turn off "Microsoft Rewards"



## Blair-Specific Things

### Fonts to Install

- Azeret Mono
- Fira Sans
- Josefin Sans
- Josefin Slab
- Montserrat


### Logitech Options

- Install manually (doesn't seem to be available on Chocolatey)
- https://www.logitech.com/en-au/software/options.html


### Nextcloud Calendar

Windows Calendar isn't that great; for example, it's isn't so easy to transfer an event from one Calendar to another.
Honestly, the NextCloud Calendar web app in the browser is probably better.
But it's probably not a terrible idea to have this set up anyway (e.g., for offline use).

Instructions: https://docs.nextcloud.com/server/latest/user_manual/en/groupware/sync_windows10.html

