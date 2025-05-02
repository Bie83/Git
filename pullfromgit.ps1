param (
    [string]$Remote = "origin",  # Default remote is "origin"
    [string]$Branch = "main"     # Default branch is "main"
)

# Ensure you're in a Git repository
if (-not (Test-Path ".git")) {
    Write-Error "This folder is not a Git repository."
    exit 1
}

# Show the current Git branch
$branch = git rev-parse --abbrev-ref HEAD
Write-Host "Current branch: $branch"

# Show the status of the repository (modified/add/.ed files, etc.)
Write-Host "Git status:"
git status

# Show remote repository information
Write-Host "Remote repository info:"
git remote -v

# Pull the latest changes from the specified remote and branch
Write-Host "Pulling from $Remote/$Branch..."
git pull $Remote $Branch

# Show latest commit info
Write-Host "Latest commit info:"
git log -1 --oneline
