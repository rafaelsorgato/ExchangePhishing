
$principal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if($principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
<# 
.NAME
    Unlocker
#>
if ((-not(Get-InstalledModule -Name PSWSMan)) -or (-not(Get-InstalledModule -Name ExchangeOnlineManagement))) {
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(400,150)
$Form.text                       = "Unlocker"
$Form.TopMost                    = $false

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Made By: Rafael Sorgato"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(273,135)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Install Dependencies"
$Button1.width                   = 267
$Button1.height                  = 38
$Button1.location                = New-Object System.Drawing.Point(61,26)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button1.Add_Click{
$Button1.text                    = "LOADING"
Install-Module -Name PSWSMan -Force
Install-Module -Name ExchangeOnlineManagement -Force
$Form.close()
Exit-PSSession
}
$Form.controls.AddRange(@($Button1,$TextBox1,$Label1,$Button2,$Label2))
[void]$Form.ShowDialog()
}else{
Connect-ExchangeOnline 

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(400,292)
$Form.text                       = "Unlocker"
$Form.TopMost                    = $false

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 197
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(98,149)
$TextBox1.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$TextBox1.Text                   = ""

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Domain To Unlock Images (ex: gmail.com)"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(73,113)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Run"
$Button2.width                   = 60
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(167,204)
$Button2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button2.Add_Click{
$Label1.text                     = "LOADING, PLEASE WAIT +- 5 MINUTES"
Start-Sleep(5)
$All = Get-Mailbox -RecipientTypeDetails UserMailbox -ResultSize Unlimited; $All | foreach {Set-MailboxJunkEmailConfiguration $_.Name -TrustedSendersAndDomains @{Add=$TextBox1.Text}}
$Label1.text                     = "Domain To Unlock Images (ex: gmail.com)"
}

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Made By: Rafael Sorgato"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(273,273)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$Form.controls.AddRange(@($Button1,$TextBox1,$Label1,$Button2,$Label2))
[void]$Form.ShowDialog()

}

}
else {
    Start-Process -FilePath "powershell" -ArgumentList "$('-File ""')$(Get-Location)$('\')$($MyInvocation.MyCommand.Name)$('""')" -Verb runAs
}

