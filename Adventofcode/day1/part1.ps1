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

$elves.GetEnumerator() | Sort-Object -property Value | Select-object -last 1
clear-variable elfcalories
clear-variable elves
