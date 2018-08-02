# Anton's internet connection checkers
The repository consists of 2 Powershell scripts that keep track of internet (or actually Google) connection status.

## checkInternetSimple.ps1
The simple version just pings google until a ping comes through at which point it displays a popup and closes itself (good for "playing with settings until it works").

## checkInternetContinuous.ps1
The continuous version never stops pinging and constantly updates the current connection status and statistics (good for unstable internet connections).
