Function gitcom { git commit -a -m $args }
Set-Alias -Name gic -Value gitcom

Function gitcomn {
	git add .
	git commit -m $args
}
Set-Alias -Name gcn -Value gitcomn

Function gitpush { git push }
Set-Alias -Name gip -Value gitpush

if ($PSVersionTable.PSVersion.Major -lt 6)
{
	Remove-Item Alias:curl
}

Function psudo {
	Start-Process PowerShell -Verb RunAs
}
Set-Alias -name sudo -Value psudo
