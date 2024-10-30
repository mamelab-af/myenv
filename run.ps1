
Push-Location shell

./create-profile.ps1

echo "----- $PROFILE -----"
Get-Content $PROFILE
echo "----- $PROFILE -----"

Pop-Location
