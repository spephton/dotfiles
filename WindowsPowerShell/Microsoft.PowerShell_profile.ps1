Function gitcom { git commit -a -m $args }
Set-Alias -Name gic -Value gitcom

Function gitcomn {
	git add .
	git commit -m $args
}
Set-Alias -Name gcn -Value gitcomn

Function gitpush { git push }
Set-Alias -Name gip -Value gitpush

Remove-Item alias:curl # use system32 curl instead of Invoke-WebRequest
