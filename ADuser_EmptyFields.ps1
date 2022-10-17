
$Aduser = Get-ADUser -Filter {-not(Title -like "*") -or -not(Department -like "*") -or -not(Company -like "*") } -Properties Name,Surname,GivenName,mail,Title,Department,Manager,Company 

$Adrepot = $Aduser | Where { $_.Enabled -eq $True} | select Name,Surname,GivenName,mail,Title,Department,Company,Manager,Status 

$Adrepot | sort Name | Export-Csv c:\temp\UsersReport.csv -NoTypeInformation

#test
