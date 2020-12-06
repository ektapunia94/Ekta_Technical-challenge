#Query to get metadata of a instance running in azure
# tool used azure powershell
# Login to azure portal is required
# select the subscription where the instance has been provisioned


#query to get any resource details. Below query will poat the output in json format in specified format

Get-azResource -ResourceType "<Type of Resource>" -ResourceGroupName "<Name of the resource group>" -Name "<Name of resource group>" | ConvertTo-json | Out-File "<path to json file>"





