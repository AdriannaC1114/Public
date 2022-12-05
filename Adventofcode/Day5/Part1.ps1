$MainStack = @(gc C:\users\clarke_Adrianna\Desktop\AdventofCode\Day5\input.txt)

#Build Cratestacks
$CrateStacks = $mainstack[0..7]

$1 = [System.Collections.ArrayList]@($cratestacks.Substring(1,1)  -ne ".") 
$2 = [System.Collections.ArrayList]@($cratestacks.Substring(5,1) -ne ".")
$3 = [System.Collections.ArrayList]@($cratestacks.Substring(9,1) -ne ".")
$4 = [System.Collections.ArrayList]@($cratestacks.Substring(13,1) -ne ".")
$5 = [System.Collections.ArrayList]@($cratestacks.Substring(17,1) -ne ".")
$6 = [System.Collections.ArrayList]@($cratestacks.Substring(21,1)  -ne ".") 
$7 = [System.Collections.ArrayList]@($cratestacks.Substring(25,1) -ne ".")
$8 = [System.Collections.ArrayList]@($cratestacks.Substring(29,1) -ne ".")
$9 = [System.Collections.ArrayList]@($cratestacks.Substring(33,1) -ne ".")
$hash = @{}
$hash.add(9,$9)
$hash.add(1,$1)
$hash.add(2,$2)
$hash.add(3,$3)
$hash.add(4,$4)
$hash.add(5,$5)
$hash.add(6,$6)
$hash.add(7,$7)
$hash.add(8,$8)



#Instructions

$Instructions = Foreach($Line in $mainstack[10..550]){
        If($line.Length -eq 18){
            $quantity = [int32]$line.Substring(5,1)
            $source = [int32]$line.Substring(12,1)
            $destination = [int32]$line.Substring(17,1)}
            
        Else{$quantity = [int32]$line.substring(5,2)
             $source = [int32]$line.Substring(13,1)
             $Destination = [int32]$line.Substring(18,1)}

        $hash.$source = $hash.$source[$quantity..1000]
        
        
        Write-host $Line':'$hash.$source
        Write-host $line':'$hash.$destination
        clear-variable Dropin
        clear-variable char
}

