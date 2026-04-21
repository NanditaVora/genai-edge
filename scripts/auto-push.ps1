param(
    [string]$Branch = "main",
    [int]$IntervalMinutes = 5,
    [string]$CommitMessagePrefix = "chore: auto-save"
)

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $repoRoot

Write-Host "Starting auto-push loop in $repoRoot"
Write-Host "Branch: $Branch | Interval: $IntervalMinutes minute(s)"
Write-Host "Press Ctrl+C to stop."

while ($true) {
    try {
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        $hasChanges = (git status --porcelain)

        if (-not $hasChanges) {
            Write-Host "[$timestamp] No changes detected."
        }
        else {
            git add -A
            git commit -m "$CommitMessagePrefix ($timestamp)" | Out-Null
            git push origin $Branch | Out-Null
            Write-Host "[$timestamp] Changes committed and pushed to origin/$Branch."
        }
    }
    catch {
        $errorTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        Write-Host "[$errorTime] Auto-push failed: $($_.Exception.Message)"
    }

    Start-Sleep -Seconds ($IntervalMinutes * 60)
}
