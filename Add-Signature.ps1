## Signs a file
$file = "C:\Users\Momo\Downloads\quentin.ps1" ###make your own filepath
$cert = @(Get-ChildItem cert:\CurrentUser\My -codesigning)[0]
Set-AuthenticodeSignature $file $cert