# -----------------------------------------------------------------------------
# PowerShell Profile — Windows Edition
# Precision-tuned for fluid, low-latency visuals with Apple-grade meticulousness.
# -----------------------------------------------------------------------------

# Enable ANSI rendering for gradient-capable prompts
$PSStyle.OutputRendering = [System.Management.Automation.OutputRendering]::Ansi

# Load Starship prompt if installed
if (Get-Command starship -ErrorAction SilentlyContinue) {
    Invoke-Expression (& starship init powershell)
}

# Predictive IntelliSense with unobtrusive list view
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None

# Subtle directory listings using eza when available
function ls {
    if (Get-Command eza -ErrorAction SilentlyContinue) {
        eza --icons --group-directories-first @args
    } else {
        Get-ChildItem @args
    }
}

Set-Alias ll "ls"
Set-Alias gs "git status -sb"

# Launch fastfetch for a graceful intro animation
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch --logo windows11 --color-keys "#9CA3AF" --padding 1 --logo-padding 2
}
