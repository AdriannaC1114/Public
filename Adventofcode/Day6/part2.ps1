$code = gc C:\Users\Adrianna\Desktop\Day6\input

Do{$MarkerCheck = $code.Substring($CharCount,14)
$charcount++
$markercheck
}
Until(($MarkerCheck.ToCharArray() | Sort-Object | Get-unique).count -eq 14 )

write-host unique found $markercheck
$charcount + 14

clear-variable charcount
