try {
  Push-Location $PSScriptRoot

  while ($true) {
    $email = Read-Host "Enter email address" -AsSecureString
    if ( $email -and $email -ne "") {
      break
    }
  }

  # Generate key.
  ssh-keygen -t ed25519 -C $email -f ~/.ssh/github

  # Copy public key.
  Get-Content ~/.ssh/github.pub | Set-Clipboard

  # Add public key to github(manual).
  Start-Process "https://github.com/settings/keys"

  # Add to ~/.ssh/config
  Write-Output @"
Host github.com
  IdentityFile ~/.ssh/github
  User git
"@ > ~/.ssh/config

  # Test
  ssh -T github.com
}
finally {
  Pop-Location
}
