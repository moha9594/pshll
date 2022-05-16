<#
.SYNOPSIS
    Ce script crée un objet pour Jerome Jouvent

.DESCRIPTION
    Objet de type création d'un individu

.EXAMPLE

.INPUTS

.OUTPUTS
    
.NOTES
    NAME:    cr-objet1
    AUTHOR:    groupe projet 1
    EMAIL:    
    WWW:    
    

    VERSION HISTORY:

    1.0     2022.01.01
            Initial Version

#>
Function cr-objet1 {

#ajoute les fonctionnalites de base debug etc 
[CmdLetBinding()]

#hash table 
$properties = @{'name'='toto';
                'age'=20;
                'profession'='retraite'}
#objet instancie avec les proprietes de la ht
$output = New-Object -TypeName PSObject -Property $properties

$output

}
Function cr-objet2 {
#on cree l objet 
$personne= New-Object -TypeName PSObject

#on ajoute les membres proprietes/methodes

Add-Member -InputObject $personne -MemberType NoteProperty -Name nom -Value "toto"
Add-Member -InputObject $personne -MemberType NoteProperty -Name age -Value "20"
Add-Member -InputObject $personne -MemberType NoteProperty -Name profession -Value "retraite"

$personne

}

Function cr-objet3 {
#definit la classe pour instancier les objets: fonctionnalite + recente

class Personne {

#properties

[string]$nom
[datetime]$dateNaissance
[string]$profession

#constructeur

Personne([string]$nom,
[datetime]$dateNaissance,
[string]$profession){

$this.nom=$nom
$this.dateNaissance=Get-Date $DateNaissance
$this.profession=$profession
}
#methode
[int]calculerAge() {
$now=Get-Date
$age=$now - $this.dateNaissance
return [math]::floor($age.Days/365)
}
}

# instancier l objet 

#avec constructeur 

$obj=New-Object -TypeName Personne -ArgumentList "toto", "2002 1 1","retraite"

#[Personne]$obj=[Personne]::new("toto", "2002 1 1","retraite")

#sans constructeur 

#$obj=[Personne]::new()
#$obj.dateNaissance="2002 1 1"
#$obj.nom="toto"
#$obj.profession="retraite"

$obj

#appel methode
$age=$obj.calculerAge()
"il a $age ans"


}




