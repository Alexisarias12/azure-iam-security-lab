Connect-AzureAD

$passwordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$passwordProfile.Password = "TempP@ss1234"
$passwordProfile.ForceChangePasswordNextLogin = $true

New-AzureADUser `
-DisplayName "Lab Engineer" `
-UserPrincipalName labengineer@companylab.onmicrosoft.com `
-AccountEnabled $true `
-MailNickname "labengineer" `
-PasswordProfile $passwordProfile
