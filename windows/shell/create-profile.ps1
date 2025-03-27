try {
  Push-Location $PSScriptRoot

  # スクリプト実行が許可されていなければ許可する
  if((Get-ExecutionPolicy -Scope LocalMachine) -ne "RemoteSigned"){Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force}
  # Profile が無ければ作成
  if(-not (Test-Path $PROFILE)){New-Item $PROFILE -Type File -Force}
  # メモ帳で Profile を開く
  # notepad $PROFILE

  "" > $PROFILE

  Get-Content ./ps-docker-alias.ps1 >> $PROFILE
  Get-Content ./ps-git-alias.ps1 >> $PROFILE
}
finally {
  Pop-Location
}