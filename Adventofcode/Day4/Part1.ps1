$routes = @(Get-content C:\Users\Adrianna\Desktop\Day4\input)

#Split Routes
Foreach($route in $routes)
{
    $array = $route -split ","
    $pathBuild1 = $array[0] -split "-" 
    $path1 = $pathbuild1[0]..$pathbuild1[1]
    $pathBuild2 = $array[1] -split "-" 
    $path2 = $pathbuild2[0]..$pathbuild2[1]

    $Compare = @(Compare-object $path1 $path2 -IncludeEqual -ExcludeDifferent)
    $ArrayCompare = @($compare | select-object -expandproperty inputobject).Count

        If(($ArrayCompare -eq $path2.count) -or ($arraycompare -eq $path1.count)){
            $counter += 1 }
            Else{$false}

}
$counter
$counter = 0 