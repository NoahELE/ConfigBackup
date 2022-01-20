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
    git push
}
Function gl {
    git pull
}
$env:FZF_DEFAULT_COMMAND = 'fd --type f'
$env:FZF_DEFAULT_OPTS = '--preview "bat --style=numbers --color=always --line-range :500 {}"'
