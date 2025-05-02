param (
    [Parameter(Mandatory = $true)]
    [string]$Message
)

# Ensure you're in a Git repository
if (-not (Test-Path ".git")) {
    Write-Error "This folder is not a Git repository."
    exit 1
}

# Stage all changes
git add .

# Commit with message
git commit -m "$Message"

# Push to the current remote branch
git push
