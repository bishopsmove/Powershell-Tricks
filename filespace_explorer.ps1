
$fileDetail = @{Directory=""; Size=0}
((gci c:\ -Directory -Force ) | %{ 
$fileDetail = @{Directory=""; Size=0}
$fileDetail.Directory = $_.FullName 
$fileDetail.Size = (gci $_.FullName -Recurse -depth 2 -Force | Measure-Object -property length -sum)
$files += $fileDetail
})
$files | %{ $_.Directory + " | " + "{0:N2}" -f ($_.Size.sum / 1MB) + " MB"} |ft *

