Function Get-CurlFile {

    Param (
        [Parameter(Mandatory=$true)]
        [String]$URL
    )

    Invoke-Webrequest -Uri $URL -OutFile $(Split-Path -Path $URL -Leaf)
}