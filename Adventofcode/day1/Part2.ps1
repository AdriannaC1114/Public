$calories = @(get-content C:\users\clarke_Adrianna\Desktop\AdventofCode\Day1\input.txt)
$counter = 0

Foreach($value in $calories){
    If([int32]$value -eq 0){
        Write-host "Elf$counter has $elfCalories"
        $Elves += @{$counter = $elfcalories}
        $counter += 1 
        $elfcalories = 0}
        Else{
        $elfCalories += [int32]$value}
    }

$top3 = @($elves.GetEnumerator() | Sort-Object -property Value | Select-object -expandproperty Value -last 3)
Foreach($elf in $top3){
$top3calories += $elf}
$top3calories


clear-variable elfcalories
clear-variable elves