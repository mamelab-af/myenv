try {  
  Push-Location $PSScriptRoot/windows/shell

  ./create-profile.ps1

  echo "----- $PROFILE -----"
  Get-Content $PROFILE
  echo "----- $PROFILE -----"
}
finally {  
  Pop-Location
}
