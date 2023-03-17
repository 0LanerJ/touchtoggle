# touchtoggle
A PowerShell script that toggles the touchscreen on/off. 

# This script RUNS AS ADMINSTRATOR so please inspect it before running because you should never run an admin PS script without making sure it isn't going to bork your system.

There's no good 1st or 3rd party tool for windows to toggle the touchscreen without using Device Manager. Windows palm rejection is okay but not great, especially if you are using a pen that doesnt pair to your device. So I made this PowerShell script that toggles it on or off.

This is a very hacky solution but it works. I think it's still a little easier than using device manager, since you don't have to go through menu's and look for little words. This is just a couple yes or no questions and then boom, toggled!

# How to use:
1. Place the script file at the root of your C: drive and don't rename it
2. Place shortcut file on desktop
3. Open the properties of the shortcut, click the shortcut tab and click advanced then check run as administrator.
4. Run the shortcut, accept the UAC prompt, type "y" then hit enter and your touchscreen will be toggled on/off
5. Running again it will change it back

# What it does:
1. Shortcut runs PowerShell as Adminstrator and calls the script
2. Script checks the status of the touchscreen to decide whether to disable/enable
3. touchscreen is set to enable/disable accordingly, user must type "y" to accept
