function sx {
    param(
        [string]$Command
    )

    switch ($Command) {
        "update" {
            Start-SxEnvironment -Force
        }

        "doctor" {
            Test-SxEnvironment
        }

        "state" {
            Get-Content "$HOME\.sxtools\state.json"
        }

        default {
            Write-Host "Commands:"
            Write-Host "  sx update"
            Write-Host "  sx doctor"
            Write-Host "  sx state"
        }
    }
}
