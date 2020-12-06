#function to take nested object and key as parameters and return the value

function findval 
 { 
 	[CmdletBinding()] 
 	Param ( 
     	[ Parameter (Mandatory = $true)] 
     	[Object] $jsonObject,
 
     	[ Parameter (Mandatory = $true)] 
     	[string] $key
 	)
  	
 
   $json = ConvertFrom-Json $jsonObject
   $val= $key[0]
   $value= $json."$($val)"
   if($key.Length -eq 1)
   {
  	return $value
   }
   for($i=1; $i -le ($key.Length)-1; $i++)
     {
        if($key[$i] -eq "/")
        {
        continue;
        }
     $value = $value."$($val)"
    }
 
   return $value 

  } 
