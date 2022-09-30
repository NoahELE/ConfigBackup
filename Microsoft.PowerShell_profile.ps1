Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Remove-Item alias:gc -Force
Remove-Item alias:gp -Force
Remove-Item alias:gl -Force

Function ga {
    git add $args
}
Function gaa {
    git add --all $args
}
Function gc {
    git commit -v $args
}
Function gp {
    git push $args
}
Function gl {
    git pull $args
}

Function proxy {
    $env:ALL_PROXY="http://127.0.0.1:7890"
    $env:HTTP_PROXY="http://127.0.0.1:7890"
    $env:HTTPS_PROXY="http://127.0.0.1:7890"
    (Invoke-WebRequest https://ip.gs/ip).Content
}
Function unproxy {
    Remove-Item env:ALL_PROXY
    Remove-Item env:HTTP_PROXY
    Remove-Item env:HTTPS_PROXY
    (Invoke-WebRequest https://ip.gs/ip).Content
}

Invoke-Expression (&starship init powershell)

Invoke-Expression (&{
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})

$env:FZF_DEFAULT_COMMAND = 'fd --type file --color always'
$env:FZF_DEFAULT_OPTS = '--ansi --height 50% --preview "bat --style numbers --color always --line-range :500 {}"'
$env:_ZO_FZF_OPTS = '--ansi --height 50% --preview "lsd --color always --icon always {2..}"'
