
$folders = @("C:\Windows\SoftwareDistribution\SLS", "C:\Windows\SoftwareDistribution\Download")

    foreach ($folder in $folders) {
        if ((Get-ChildItem -Path $folder).Count -eq 0){
            Write-Host "The current folder path is empty for $folder"
        }
        else{
            Remove-Item -Path $folder\* -Force
            Write-Host "File Contents Deleted at $folder"
        }
    }
    