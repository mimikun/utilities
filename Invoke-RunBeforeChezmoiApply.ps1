# Run before chezmoi apply

function Invoke-RunBeforeChezmoiApply() {
    Write-Output "pre-apply-hook"

    Write-Output "Set BW_SESSION env"
    $env:BW_SESSION = (bw unlock --raw)
}

Invoke-RunBeforeChezmoiApply
