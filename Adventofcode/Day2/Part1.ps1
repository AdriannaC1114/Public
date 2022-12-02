$Strat = @(Get-content C:\users\clarke_Adrianna\Desktop\AdventofCode\day2\input.txt)
<#
A = Rock
B = Paper
C = Scissors 

X = Rock
Y = Paper
Z = Scissors

Loss = 0
Draw = 3
Win = 6

#>
$tournament = @()
$Loss = 0 
$Draw = 3
$win = 6
$x = 1
$y = 2
$z = 3
Foreach($round in $strat){
    $Array = @($round.split())
    If(($Array[0] -eq "A") -and ($array[1] -eq "Y")){$tournament += $win + $y}
    ElseIf(($Array[0] -eq "A") -and ($array[1] -eq "X")){$tournament += $draw + $x}
    ElseIf(($Array[0] -eq "b") -and ($array[1] -eq "Y")){$tournament += $draw + $y}
    ElseIf(($Array[0] -eq "b") -and ($array[1] -eq "Z")){$tournament += $win + $z}
    ElseIf(($Array[0] -eq "c") -and ($array[1] -eq "Z")){$tournament += $draw + $Z}
    ElseIf(($Array[0] -eq "c") -and ($array[1] -eq "X")){$tournament += $win + $X}
    

    ElseIf(($Array[0] -eq "a") -and ($array[1] -eq "Z")){$tournament += $Z}
    ElseIf(($Array[0] -eq "b") -and ($array[1] -eq "X")){$tournament += $X}
    ElseIf(($Array[0] -eq "c") -and ($array[1] -eq "Y")){$tournament += $Y}
    
    
    }
Foreach($round in $tournament){
$Total += $round}
$total

clear-variable tournament
clear-variable total