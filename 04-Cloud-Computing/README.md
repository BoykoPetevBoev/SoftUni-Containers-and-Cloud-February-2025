
```
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; Remove-Item .\AzureCLI.msi
```

``` 
az login
```

``` 
az group create --name trackerapp --location italynorth
```

```
az acr create --resource-group trackerapp --name trackerappboykoacr --sku Basic
```

