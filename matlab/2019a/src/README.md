Received license file from PERFORM IT
Downloaded installer (/src)
Ran install as networkadmin

Scaling of the UI and fonts for highDPI screens is not setup by default, within matlab run:
s = settings;s.matlab.desktop.DisplayScaleFactor
s.matlab.desktop.DisplayScaleFactor.PersonalValue = 2.5 %1.5 to 2.5 should do the trick
