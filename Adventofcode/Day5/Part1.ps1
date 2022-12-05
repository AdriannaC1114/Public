$MainStack = @(gc C:\users\clarke_Adrianna\Desktop\AdventofCode\Day5\input.txt)

#Build Cratestacks
$CrateStacks = $mainstack[0..7]

$1 = @($cratestacks.Substring(1,1)  -ne ".") 
$2 = @($cratestacks.Substring(5,1) -ne ".")
$3 = @($cratestacks.Substring(9,1) -ne ".")
$4 = @($cratestacks.Substring(13,1) -ne ".")
$5 = @($cratestacks.Substring(17,1) -ne ".")
$6 = @($cratestacks.Substring(21,1)  -ne ".") 
$7 = @($cratestacks.Substring(25,1) -ne ".")
$8 = @($cratestacks.Substring(29,1) -ne ".")
$9 = @($cratestacks.Substring(33,1) -ne ".")

#Instructions

$Instructions = Foreach($Line in $mainstack[10..550]){
        If($line.Length -eq 18){
            $quantity = $line.Substring(5,1)
            $source = $line.Substring(12,1)
            $destination = $line.Substring(17,1)

            
            
            
            }
        Else{$quantity = $line.substring(5,2)
             $source = $line.Substring(13,1)
             $Destination = $line.Substring(18,1)
             
             
             }
}
