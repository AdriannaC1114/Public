#Var
Clear-Variable units
clear-variable alldir
clear-variable sum
clear-variable sum1
$commands = @(gc C:\Users\adrianna\Desktop\Day7\input.txt)
$Numbers = 0..9
$ofs = '\'
$Alldir = @{}
$cwd = ""

#Build Directories List
Foreach($command in $commands)
    #Directory Choosing and Creation
    {If($command.StartsWith('$ cd')){

        #Up One Level
        If($command.substring(5) -eq ".."){
        $cwd = ($cwd.split('\') | Select -SkipLast 1)
        $cwd = [string]$cwd
        
        }
        #Go to new directory

        Else{
        $foldername = $command.Substring(5)
        $CWD = $CWD + '\' + "$foldername"
        If($alldir.$cwd -eq $null -or $false){
        $alldir.add($cwd,0)}
        }}

    #If its a file, add it to the current directory's value
    Elseif($numbers -contains $command.Substring(0,1)){
        $value = ($command -split " ")[0]

        #Make key if it isn't there
        If($alldir.$cwd -eq $null -or $false){
        $alldir.add($cwd,0)
        $alldir.$cwd += [int32]$value}
        
        #Add value
        Else{
        $alldir.$cwd += [int32]$value
        }
        #check if you're in a subfolder. Check if there's slashes, and if there is, move it up one
        #and check again. Repeats until there is a single directory
        $slashcheck = $cwd.ToCharArray() | Group-Object -AsHashTable -AsString

        if($slashcheck['\'].Count -ge 2){
        $units = $cwd

        #recurse up the tree
        Do{
        $units = ($units.split('\') | select -SkipLast 1)
        $units = [string]$units
        
        If($alldir.$units -eq $null -or $false){
        $alldir.add($units,0)
        
        $alldir.$units += [int32]$value}

        Else{
        $alldir.$units += [int32]$value}
        $slashcheck['\'].Count
        $slashcheck = $units.ToCharArray() | Group-Object -AsHashTable -AsString
        }
        until($slashcheck['\'].Count -lt 2)
        }}
        }
        
$totaldiskspace = 70000000

$alldir.values  | Sort-Object -Descending

        
Foreach($tester in $alldir.values){If([int32]$tester -lt 100000){
$sum += $tester}}

$toplevels = @()
Foreach($key in @($alldir.keys)[0..189]){
    $slashcheck = $key.ToCharArray() | Group-Object -AsHashTable -AsString
    If($slashcheck['\'].count -gt 1){$null}
    Else{$toplevels += $key}}

Foreach($folder in $toplevels){$sum1 += $alldir.$folder}

$SizeDiff = 70000000 - $sum1
$sizediff = 30000000 - $sizediff

$alldir.values -ge 3956976 | select -First 1
