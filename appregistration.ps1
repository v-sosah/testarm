$appName = "skstestapp"
$appURI = "https://tailwindtraderssalesapp.twtmitt.onmicrosoft.com"
$appHomePageUrl = "http://www.tailwindtraders.com/"
$appReplyURLs = @($appURI, $appHomePageURL, "https://localhost:1234")
Install-Module -Name "AzureAD" -AllowClobber -Force
$myApp = New-AzureADApplication -DisplayName $appName -IdentifierUris $appURI -Homepage $appHomePageUrl -ReplyUrls $appReplyURLs    
