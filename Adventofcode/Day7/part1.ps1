#cleanup my SHIT
clear-variable cwd
clear-variable sum
clear-variable value

#Var
$commands = @(gc C:\Users\clarke_Adrianna\Desktop\AdventofCode\Day7\input.txt)
$Numbers = 0..9
$ofcs = '\'
$Alldir = @{}


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
        $CWD = $CWD + "\" + "$foldername"
        
        }}

    #doesn't matter
    Elseif($command.StartsWith('$ ls')){$null}
    
    #doesn't matter
    Elseif($command.StartsWith('dir')){$null}
    
    #If its a file, add it to the current directory's value
    Elseif($numbers -contains $command.Substring(0,1)){
        $value = ($command -split " ")[0]
        
        #Make directory in table if doesn't exist
        
        If($alldir.$cwd -eq $true -OR $null){
        $alldir.add($cwd,0)}

        #Otherwise add to the current directory in table
        $alldir.$cwd += [int32]$value
        $ErrorActionPreference = 'continue'
        
        }
        }

    

Foreach($tester in $alldir.values){If([int32]$tester -lt 100000){
$sum += $tester
}


}
