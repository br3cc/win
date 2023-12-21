$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "<password>" # keep the quotes, take out the brackets
$displayName = "Tim Apple"
$mailNickName = "timapple"
$uPN = "timapple@contoso.onmicrosoft.com"
$companyName = "Contoso" # Not necessary, take out "-CompanyName $companyName" from the script if you don't want it
$userType = "Member" # other option is Guest

New-AzureADUser -AccountEnabled $True -DisplayName $displayName -PasswordProfile $PasswordProfile -MailNickName $mailNickName -UserPrincipalName $uPN -CompanyName $companyName -UserType $userType


# Uncomment the 3 lines below to make the user a Global Admin - but, you know, be careful

# $user = Get-AzureADUser -ObjectId $uPN
# $role = Get-AzureADDirectoryRole | Where-Object {$_.displayName -eq "Global Administrator"}
# Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId $user.ObjectId
