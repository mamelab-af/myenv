try {
  Push-Location $PSScriptRoot

  git checkout main
  try {
    git branch -D new_main 2>$null
  } catch {
    # ignore
  }
  git checkout --orphan new_main

  git add --all

  git commit -m "Initial commit"
  git branch -D main
  git branch -m main
  git push origin -f main

  Remove-Item -Recurse -Force .git/logs
}
finally {
  Pop-Location
}
