$global:rucksacks = @(get-content C:\Users\Adrianna\Desktop\input.txt)
#Array for Values
$CharacterDictionaryValue = @(
    'BURNER'
    'a'
    'b'
    'c'
    'd'
    'e'
    'f'
    'g'
    'h'
    'i'
    'j'
    'k'
    'l'
    'm'
    'n'
    'o'
    'p'
    'q'
    'r'
    's'
    't'
    'u'
    'v'
    'w'
    'x'
    'y'
    'z'
    'A'
    'B'
    'C'
    'D'
    'E'
    'F'
    'G'
    'H'
    'I'
    'J'
    'K'
    'L'
    'M'
    'N'
    'O'
    'P'
    'Q'
    'R'
    'S'
    'T'
    'U'
    'V'
    'W'
    'X'
    'Y'
    'Z'
    )
$IndexNumber = 0
#Create groups
$start = 0 
$end = 2
$totalgroups = 0
Do{
$hash += @{$totalgroups = $rucksacks[$Start..$end]}
$totalgroups += 1
$start += 3
$end += 3}
Until($totalgroups -eq 100)


#Find Values from each group
Do{
$Array = @($hash[$indexnumber])

$rucksack1 = $array[0].ToCharArray()
$rucksack2 = $array[1].ToCharArray()
$rucksack3 = $array[2].ToCharArray()
$round1 = compare-object $rucksack1 $rucksack2 -CaseSensitive -IncludeEqual -ExcludeDifferent | select-object -ExpandProperty Inputobject
$findsame = Compare-Object $round1 $rucksack3 -CaseSensitive -IncludeEqual -ExcludeDifferent | select-object -ExpandProperty Inputobject -First 1
$total += $CharacterDictionaryValue.IndexOf("$findsame")


$indexnumber += 1
}until($indexnumber -eq 100)

$total

