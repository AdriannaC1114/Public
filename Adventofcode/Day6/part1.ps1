$code = gc C:\Users\Adrianna\Desktop\Day6\input

Do{$MarkerCheck = $code.Substring($CharCount,4)
$charcount++
$markercheck
}
Until(($MarkerCheck.ToCharArray() | Sort-Object | Get-unique).count -eq 4 )

$charcount + 4


