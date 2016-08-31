
Set-Location c:\temp\logging

$ocsState = [XML](Get-Content -Path OCSLogger.state.xml)

$ocsState.SelectNodes("//Component") | %{

    $_.enabled = "True"
    $_.checkedLevel = "All"
    $_.checkedFlags = "All flags"
}

$ocsState.Save("c:\temp\logging\OCSLogger.State.Full.xml")