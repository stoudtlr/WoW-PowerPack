#Button Functions
$button_basefolder_click = {
	$FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog -Property @{
		RootFolder = "MyComputer"
		Description = "$Env:ComputerName - Select a folder"
	}
	$null = $FolderBrowser.ShowDialog()
	Set-Variable -Name BaseFolder -Value $FolderBrowser.SelectedPath -Scope Script
	$textbox_selectedfolder.text = $BaseFolder
}

$button_install_click = {
	[System.Windows.Forms.MessageBox]::Show("$BaseFolder")

}

$button_clone_click = {
	$GitSource = $comboBox_version.SelectedItem
	[System.Windows.Forms.MessageBox]::Show("$GitSource")
}

$button_modules_click = {

}

$button_buildserver_click = {

}

$button_startserver_click = {

}

$button_repack_click = {

}

. (Join-Path $PSScriptRoot 'WoW_PowerPack_GUI.designer.ps1')

$WoW_PowerPack_GUI.ShowDialog()