$params = @{
    Subject = 'CN=cert-test'
    Type = 'CodeSigning'
    CertStoreLocation = "Cert:\CurrentUser\My"
    HashAlgorithm = 'sha256'
}
$cert = New-SelfSignedCertificate @params