
Import-Module posh-git

New-Alias e explorer
New-Alias gits git-status
New-Alias gitc git-commit
New-Alias gita git-add-all
New-Alias gitp git-push

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

function git-status{
		git status
}

