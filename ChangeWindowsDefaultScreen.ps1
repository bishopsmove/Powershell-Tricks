
<#
    This is a simple utility that helps you change your Windows default/lock screen. It really only works 
    if you have more than one file in the backgrounds directory noted below. 
#>

$bgPath = 'C:\Windows\System32\oobe\INFO\backgrounds'
$excludeFile = 'backgrounddefault.jpg'

$pictures = {} 
if(Test-Path $bgPath -IsValid){
 $pictures = gci -Path $bgPath -Exclude $excludeFile
}

$pictures | % { $_.Name } | Out-GridView -OutputMode Single | % { Copy-Item -Path $bgPath\$_ -Destination $bgPath\$excludeFile }