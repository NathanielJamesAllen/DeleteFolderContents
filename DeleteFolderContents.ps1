<#
Deletes the Contents of a Folder(s) by iterating through an array using a for each loop.
Path 1: "C:\Windows\SoftwareDistribution\SLS"
Path 2: "C:\Windows\SoftwareDistribution\Download"
#>

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