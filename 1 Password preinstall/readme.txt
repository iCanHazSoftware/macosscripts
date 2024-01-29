This script is used to close all 1Password processes (resutling in the dekstop app closing) and also the 1Password-Crash-Handler process.  Once they are closed it will continue with the udating of 1Password. This will not close the 1Password Browser Helper but that process does not prevent from the updating of the 1Password desktop application.  
This is used in our Munki deployment.  Without this script Munki will tell users to close the application, however our users have found this difficult because the app lives in the menu bar and not the dock.
Add this into your autopkg recipe override as a "preinstall" script for best results.

NOTE: This does NOT reopen the applcation after install.  If you would like that to occur you will need to create a post install script for that to occur. When a user attempts to authenticate through the browser extension, the desktop app will be automatically reopened, so I personally don't feel the need to reopen the app and annoy the user with the 1PW "welcome" window.

NOTE: You will need to leave a blank "blocking applications" array in autopkg or the 1password application's Info.plist example below.

<key>blocking_applications</key>
			<array>
			</array>
