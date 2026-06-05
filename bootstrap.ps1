. "$PSScriptRoot/common/utils.ps1"

$config = Get-Content "$PSScriptRoot/config/apps.json" | ConvertFrom-Json

foreach ($app in $config.apps) {

    if (Test-AppInstalled $app.name) {
        Write-Host "$($app.name) ✔ installed"
    }
    else {
        Write-Host "$($app.name) ❌ missing"
    }
}
