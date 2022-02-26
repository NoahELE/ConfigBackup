Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Invoke-Expression (&starship init powershell)
Invoke-Expression (&{
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})
fnm env | Out-String | Invoke-Expression
$env:FZF_DEFAULT_COMMAND = 'fd --hidden --follow --type file --exclude={.git,.idea,.vscode,node_modules}'
$env:FZF_DEFAULT_OPTS = '--preview "bat --style=numbers --color=always --line-range :500 {}"'
Remove-Alias gc -Force
Remove-Alias gp -Force
Remove-Alias gl -Force
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
    git push
}
Function gl {
    git pull
}
Function proxy {
    $env:http_proxy="http://127.0.0.1:7890";$env:https_proxy="http://127.0.0.1:7890"
    (Invoke-WebRequest https://ip.gs/ip).Content
}
Function unproxy {
    $env:http_proxy="http://127.0.0.1:7890";$env:https_proxy="http://127.0.0.1:7890"
    (Invoke-WebRequest https://ip.gs/ip).Content
}
