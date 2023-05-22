
Import-Module posh-git

New-Alias e explorer
New-Alias gits git-status
New-Alias gitc git-commit
New-Alias gita git-add-all
New-Alias gitph git-push
New-Alias gitpl git-pull
New-Alias gitsync git-sync

function git-add-all{
		git add .
}

function git-commit {
	param ([string] $m)
	git commit -a -m $m
}

function git-push{
	git push
}

function git-pull{
	git pull
}

function git-sync{
	git pull
	git push
}

function git-status{
		git status
}

