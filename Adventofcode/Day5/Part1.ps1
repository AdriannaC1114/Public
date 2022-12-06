$MainStack = @(gc C:\Users\Adrianna\desktop\Day5\input.txt)

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
            
            #math time
             $ArrayToFlip = @($hash.$source[0..($quantity-1)])
             [Array]::Reverse($ArrayToFlip)


            $hash.$destination = $ArrayToFlip + $hash.$destination
            $hash.$source = $hash.$source[($quantity)..1000]

}
