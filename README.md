## DEVICE-SPECIFIC

### Microsoft Surface only

-   Colour profile: sRGB
-   Refresh rate: set to 120 Hz
-   Turn off adaptive colour

## SENSIBLE UI

### General UI Settings

-   Taskbar icons on the left
-   Taskbar disable Search, Task View, Widgets, Chat
-   UI sound effects off
-   Desktop icons show them properly

### Microsoft Edge

If you must use Microsoft Edge (personally I am phasing it out of my setup in favour of chromium):

-   Set sensible Search settings
-   Turn off "Microsoft Rewards"
-   Turn on "Do Not Track"
-   Turn OFF payment methods check
-   Turn OFF Microsoft Rewards
-   Turn OFF Microsoft Defender SmartScreen
-   Turn OFF Secure DNS
-   Turn OFF Web Service for Navigation Errors
-   Turn OFF Suggest Similar Sites
-   Turn OFF Time Money Shopping Edge
-   Turn OFF Discover
-   Turn OFF all search Suggestions
-   Change search engine so it is not Bing
-   Turn off edge tabs thing

## BLAIR-SPECIFIC

### mypath

-   Make the folder `C:\00blair\mypath`
-   Add this folder to `PATH`
-   Shortcut this folder into itself
-   Add other handy shortcuts:
    -   `vsc` → VSCodium

### Fonts to Install

-   Courier Prime Code
-   Fira Sans
-   Josefin Sans
-   Josefin Slab
-   Montserrat

### Logitech Options

-   Install manually, do not rely on chocolatey.

### Nextcloud Calendar

Windows Calendar isn't that great; for example, it's isn't so easy to transfer an event from one Calendar to another. Honestly, the NextCloud Calendar web app in the browser is probably better. But it's probably not a terrible idea to have this set up anyway (e.g., for offline use).

Instructions: https://docs.nextcloud.com/server/latest/user_manual/en/groupware/sync_windows10.html

### Hosts file

    sudo notepad C:\Windows\System32\drivers\etc\hosts
