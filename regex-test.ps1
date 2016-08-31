

#Remove all non-alphanumeric characters from the name
$testString = 'sip:+11235551212;phone-context=defaultprofile@example.com;user=phone'
#'sip:+3252-115955808@example.com;user=phone'  
#sip:+11235551212;phone-context=defaultprofile@simple.local;user=phone

#Split the name at S01E01 and store the showname in a variable (Text before S01E01) 
$ShowName = $testString -match "(?:sip:|tel:)?`\+?(?<phoneNumber>[0-9]+?`\-?`\d+)" 

$regex = [regex] '(?<phoneNumber>[^sip:|tel:][+]*[0-9-]*[^;|@])'

"'"+$testString+"'" -match "[sip|tel]:[+]*(?<phoneNumber>[0-9-]+)[@;]+"
#"(?:[sip|tel])+:[+]*(?<phoneNumber>[0-9-]+)[^@|;]"
#"(?:sip:|tel:)?`\+?(?<phoneNumber>[0-9]+?`\-?`\d+)"

#[regex]::Match($newname, "(?:sip:|tel:)[+]*[\d-]*[^;|@]")




