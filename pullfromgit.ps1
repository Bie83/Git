param (
    [string]$Remote = "origin",
    [string]$Branch = "main"
)

# Check if you're inside a Git repository
if (-not (Test-Path ".git")) {
    Write-Error "This folder is not a Git repository."
    exit 1
}

# Pull from the specified remote and branch
git pull $Remote $Branch
