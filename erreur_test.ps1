$array = @(3,0,1,2)
$nb = 10
#une erreur arrive ici mais elle n'arrête pas le programme
foreach ($item in $array)
{
    try
    {
        $nb/$item | Out-Null
        Write-Host  -Fore 'green' "Le chiffre $nb est divisible par $item"
    }
    catch
    {
        Write-Error -Message "Erreur! Impossible de diviser $nb par $item !" 
    }
    finally
    {
        Write-Host -Fore 'green' "Information - Le chiffre traité est $nb"
    }
}

$array = @(3,1,0,2)
$nb = 10

echo "passage à une erreur bloquante"
#ici le throw arrête le programme complètement 
throw "your script is ..."


#on peut aussi utiliser -ErrorAction Stop pour stoper le programme

foreach ($item in $array)
{
    try
    {
        $nb/$item | Out-Null
        Write-Host  -Fore 'green' "Le chiffre $nb est divisible par $item"
    }
    catch
    {
        Write-Error -Message "Erreur! Impossible de diviser $nb par $item !" -ErrorAction Stop
    }
    finally
    {
        Write-Host -Fore 'green' "Information - Le chiffre traité est $nb"
    }
}