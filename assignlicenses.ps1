Install-Module MSOnline  

Import-Module MSOnline 

Get-Module -ListAvailable MSOnline 

Connect-MsolService 

Get-MsolAccountSku | Select-Object AccountSkuId 

 Get-MsolUser -all | where {($_.islicensed -eq $true) -and ($_.licenses.accountskuid -like "*ENTERPRISEPACK*")} | Select-Object UserPrincipalname,islicensed | Export-csv C:\Users\name\Documents\export.csv 

 

Where C:\Users\name\Documents\export.csv is the file path to export the csv file 

  