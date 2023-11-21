$scriptPath = $MyInvocation.MyCommand.Path
Write-Host "Loading Profile $scriptPath"


Write-Host "ENV Loaded"

Import-Module posh-git
Write-Host "posh-git Loaded"

New-Alias e explorer

New-Alias gita git-add-all
function git-add-all{
		git add .
}

New-Alias gitc git-commit
function git-commit {
	param ([string] $m)
	git commit -a -m $m
}

New-Alias gitph git-push
function git-push{
	git push
}

New-Alias gitpl git-pull
function git-pull{
	git pull
}

New-Alias gitsync git-sync
function git-sync{
	git pull
	git push
}

New-Alias gits git-status
function git-status{
		git status
}

New-Alias gitacp git-acp
function git-acp {
    param ([string] $m)
    git add .
    git commit -m $m
    git push
}

New-Alias go cdls
function cdls{
	param ([string] $path)
	Set-Location $path
	Get-ChildItem
}

Write-Host "Functions Set"
Clear-Host
Get-ChildItem
