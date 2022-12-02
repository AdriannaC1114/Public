$Strat = @(Get-content C:\users\clarke_Adrianna\Desktop\AdventofCode\day2\input.txt)
<#
A = Rock
B = Paper
C = Scissors 

#>
$tournament = @()
$A = 1
$B = 2
$C = 3

#lose
$x = 0
#draw
$y = 3
#win
$z = 6
Foreach($round in $strat){
    $Array = @($round.split())
    
    If(($Array[0] -eq "A") -and ($array[1] -eq "Y")){$tournament += $Y + $A}
    ElseIf(($Array[0] -eq "A") -and ($array[1] -eq "X")){$tournament += $X +$C}
    ElseIf(($Array[0] -eq "a") -and ($array[1] -eq "Z")){$tournament += $Z + $B}
    
    ElseIf(($Array[0] -eq "b") -and ($array[1] -eq "Y")){$tournament += $Y + $B}
    ElseIf(($Array[0] -eq "b") -and ($array[1] -eq "Z")){$tournament += $Z + $C}
    ElseIf(($Array[0] -eq "b") -and ($array[1] -eq "X")){$tournament += $X + $A}
    
    ElseIf(($Array[0] -eq "c") -and ($array[1] -eq "Z")){$tournament += $Z + $A}
    ElseIf(($Array[0] -eq "c") -and ($array[1] -eq "X")){$tournament += $X + $B}
    ElseIf(($Array[0] -eq "c") -and ($array[1] -eq "Y")){$tournament += $Y + $C}
    }
Foreach($round in $tournament){
$Total += $round}
$total

clear-variable tournament
clear-variable total