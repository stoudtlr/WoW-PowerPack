[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$WoW_PowerPack_GUI = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$button_clone = $null
[System.Windows.Forms.Button]$button_modules = $null
[System.Windows.Forms.ComboBox]$comboBox_version = $null
[System.Windows.Forms.Button]$button_basefolder = $null
[System.Windows.Forms.TextBox]$textBox_selectedfolder = $null
[System.Windows.Forms.Button]$button_buildserver = $null
[System.Windows.Forms.Button]$button_startserver = $null
[System.Windows.Forms.Button]$button_repack = $null
[System.Windows.Forms.Button]$button_install = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'WoW_PowerPack_GUI.resources.ps1')
$button_install = (New-Object -TypeName System.Windows.Forms.Button)
$button_clone = (New-Object -TypeName System.Windows.Forms.Button)
$button_modules = (New-Object -TypeName System.Windows.Forms.Button)
$comboBox_version = (New-Object -TypeName System.Windows.Forms.ComboBox)
$button_basefolder = (New-Object -TypeName System.Windows.Forms.Button)
$textBox_selectedfolder = (New-Object -TypeName System.Windows.Forms.TextBox)
$button_buildserver = (New-Object -TypeName System.Windows.Forms.Button)
$button_startserver = (New-Object -TypeName System.Windows.Forms.Button)
$button_repack = (New-Object -TypeName System.Windows.Forms.Button)
$WoW_PowerPack_GUI.SuspendLayout()
#
#button_install
#
$button_install.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$button_install.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
$button_install.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button_install.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]706,[System.Int32]127))
$button_install.Name = [System.String]'button_install'
$button_install.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]253,[System.Int32]56))
$button_install.TabIndex = [System.Int32]0
$button_install.Text = [System.String]'Install Dependencies'
$button_install.UseVisualStyleBackColor = $false
$button_install.add_Click($button_install_click)
#
#button_clone
#
$button_clone.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$button_clone.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
$button_clone.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button_clone.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]706,[System.Int32]189))
$button_clone.Name = [System.String]'button_clone'
$button_clone.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]253,[System.Int32]56))
$button_clone.TabIndex = [System.Int32]1
$button_clone.Text = [System.String]'Clone Base Files'
$button_clone.UseVisualStyleBackColor = $false
$button_clone.add_Click($button_clone_click)
#
#button_modules
#
$button_modules.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$button_modules.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
$button_modules.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button_modules.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]706,[System.Int32]251))
$button_modules.Name = [System.String]'button_modules'
$button_modules.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]253,[System.Int32]56))
$button_modules.TabIndex = [System.Int32]2
$button_modules.Text = [System.String]'Choose Modules'
$button_modules.UseVisualStyleBackColor = $false
$button_modules.add_Click($button_modules_click)
#
#comboBox_version
#
$comboBox_version.BackColor = [System.Drawing.SystemColors]::WindowFrame
$comboBox_version.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$comboBox_version.FormattingEnabled = $true
$comboBox_version.Items.AddRange([System.Object[]]@([System.String]'AzerothCore',[System.String]'Playerbots by liyunfan1223',[System.String]'NPCBots by trickerer'))
$comboBox_version.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]472,[System.Int32]202))
$comboBox_version.Name = [System.String]'comboBox_version'
$comboBox_version.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]228,[System.Int32]32))
$comboBox_version.TabIndex = [System.Int32]3
#
#button_basefolder
#
$button_basefolder.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$button_basefolder.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
$button_basefolder.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button_basefolder.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]567,[System.Int32]21))
$button_basefolder.Name = [System.String]'button_basefolder'
$button_basefolder.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]253,[System.Int32]56))
$button_basefolder.TabIndex = [System.Int32]4
$button_basefolder.Text = [System.String]'Choose Base Folder'
$button_basefolder.UseVisualStyleBackColor = $false
$button_basefolder.add_Click($button_basefolder_click)
#
#textBox_selectedfolder
#
$textBox_selectedfolder.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
$textBox_selectedfolder.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$textBox_selectedfolder.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]549,[System.Int32]83))
$textBox_selectedfolder.Name = [System.String]'textBox_selectedfolder'
$textBox_selectedfolder.ReadOnly = $true
$textBox_selectedfolder.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]29))
$textBox_selectedfolder.TabIndex = [System.Int32]5
$textBox_selectedfolder.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center
#
#button_buildserver
#
$button_buildserver.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$button_buildserver.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
$button_buildserver.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button_buildserver.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]752,[System.Int32]326))
$button_buildserver.Name = [System.String]'button_buildserver'
$button_buildserver.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]153,[System.Int32]129))
$button_buildserver.TabIndex = [System.Int32]6
$button_buildserver.Text = [System.String]'Build Server'
$button_buildserver.UseVisualStyleBackColor = $false
$button_buildserver.add_Click($button_buildserver_click)
#
#button_startserver
#
$button_startserver.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$button_startserver.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
$button_startserver.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button_startserver.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]299,[System.Int32]508))
$button_startserver.Name = [System.String]'button_startserver'
$button_startserver.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]153,[System.Int32]129))
$button_startserver.TabIndex = [System.Int32]7
$button_startserver.Text = [System.String]'Start Server'
$button_startserver.UseVisualStyleBackColor = $false
$button_startserver.add_Click($button_startserver_click)
#
#button_repack
#
$button_repack.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$button_repack.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
$button_repack.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button_repack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]519,[System.Int32]508))
$button_repack.Name = [System.String]'button_repack'
$button_repack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]153,[System.Int32]129))
$button_repack.TabIndex = [System.Int32]8
$button_repack.Text = [System.String]'Create Repack'
$button_repack.UseVisualStyleBackColor = $false
$button_repack.add_Click($button_repack_click)
#
#WoW_PowerPack_GUI
#
$WoW_PowerPack_GUI.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::None
$WoW_PowerPack_GUI.AutoSize = $true
$WoW_PowerPack_GUI.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$WoW_PowerPack_GUI.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$WoW_PowerPack_GUI.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Stretch
$WoW_PowerPack_GUI.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]984,[System.Int32]661))
$WoW_PowerPack_GUI.Controls.Add($button_repack)
$WoW_PowerPack_GUI.Controls.Add($button_startserver)
$WoW_PowerPack_GUI.Controls.Add($button_buildserver)
$WoW_PowerPack_GUI.Controls.Add($textBox_selectedfolder)
$WoW_PowerPack_GUI.Controls.Add($button_basefolder)
$WoW_PowerPack_GUI.Controls.Add($comboBox_version)
$WoW_PowerPack_GUI.Controls.Add($button_modules)
$WoW_PowerPack_GUI.Controls.Add($button_clone)
$WoW_PowerPack_GUI.Controls.Add($button_install)
$WoW_PowerPack_GUI.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$WoW_PowerPack_GUI.MaximizeBox = $false
$WoW_PowerPack_GUI.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1000,[System.Int32]700))
$WoW_PowerPack_GUI.Name = [System.String]'WoW_PowerPack_GUI'
$WoW_PowerPack_GUI.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$WoW_PowerPack_GUI.Text = [System.String]'AzerothCore Repack Tool'
$WoW_PowerPack_GUI.ResumeLayout($false)
$WoW_PowerPack_GUI.PerformLayout()
Add-Member -InputObject $WoW_PowerPack_GUI -Name button_clone -Value $button_clone -MemberType NoteProperty
Add-Member -InputObject $WoW_PowerPack_GUI -Name button_modules -Value $button_modules -MemberType NoteProperty
Add-Member -InputObject $WoW_PowerPack_GUI -Name comboBox_version -Value $comboBox_version -MemberType NoteProperty
Add-Member -InputObject $WoW_PowerPack_GUI -Name button_basefolder -Value $button_basefolder -MemberType NoteProperty
Add-Member -InputObject $WoW_PowerPack_GUI -Name textBox_selectedfolder -Value $textBox_selectedfolder -MemberType NoteProperty
Add-Member -InputObject $WoW_PowerPack_GUI -Name button_buildserver -Value $button_buildserver -MemberType NoteProperty
Add-Member -InputObject $WoW_PowerPack_GUI -Name button_startserver -Value $button_startserver -MemberType NoteProperty
Add-Member -InputObject $WoW_PowerPack_GUI -Name button_repack -Value $button_repack -MemberType NoteProperty
Add-Member -InputObject $WoW_PowerPack_GUI -Name button_install -Value $button_install -MemberType NoteProperty
}
. InitializeComponent
