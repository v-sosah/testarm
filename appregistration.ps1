$appName = "skstestapp"
$appURI = "https://tailwindtraderssalesapp.twtmitt.onmicrosoft.com"
$appHomePageUrl = "http://www.tailwindtraders.com/"
$appReplyURLs = @($appURI, $appHomePageURL, "https://localhost:1234")
UnInstall-Module AzureAD
Install-Module AzureADPreview
if(!($myApp = Get-AzureADApplication -Filter "DisplayName eq '$($appName)'"  -ErrorAction SilentlyContinue))
{
    $myApp = New-AzureADApplication -DisplayName $appName -IdentifierUris $appURI -Homepage $appHomePageUrl -ReplyUrls $appReplyURLs    
}