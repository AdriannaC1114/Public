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
Foreach($rucksack in $rucksacks){
    $half = $rucksack.length /2
    $Rucksack1 = $rucksack.Substring(0,$half)
    $rucksack2 = $rucksack.Substring($half)
    $rucksackArray1 = $rucksack1.ToCharArray()
    $rucksackArray2 = $rucksack2.ToCharArray()
    

    $FindSame = compare-object $rucksackarray1 $rucksackarray2 -CaseSensitive -IncludeEqual -ExcludeDifferent | select-object -ExpandProperty Inputobject -First 1
    $total += $CharacterDictionaryValue.IndexOf("$findsame")

    }

    clear-variable sum
    clear-variable total