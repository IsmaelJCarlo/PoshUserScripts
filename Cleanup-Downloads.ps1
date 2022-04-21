# Cleans up files oder than 5 days in Downloads Folder for Current user 
ls ~\Downloads | where {($_.LastWriteTime).AddDays(4) -lt (get-date)} | remove-item -force -recurse -verbose  | Out-File -FilePath ~\Downloads\Cleanup-Downloads.log
