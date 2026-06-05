#Sqwerlix powershell
$SxRoot = "$HOME\.sxtools"
. "$SxRoot\Modules\StateManager.ps1"
. "$SxRoot\Modules\AppManager.ps1"
. "$SxRoot\Modules\ModuleManager.ps1"
. "$SxRoot\Modules\UI.ps1"

Start-SxEnvironment

if (Get-Command oh-my-posh -ErrorAction SilentlyContinue) {
    oh-my-posh init pwsh --config "$SxRoot\themes\sx.omp.json" |
        Invoke-Expression
}
