cd \code\deploy
dotnet build
az login
$name = $(az functionapp list --query "[0].name" -o tsv)
$name
func azure functionapp publish $name --csharp --force

Invoke-WebRequest -Uri "<url>"

