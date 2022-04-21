# Cleans up files oder than 5 days in Downloads Folder for Current user 
ls ~\Downloads | where {($_.LastWriteTime).AddDays(5) -lt (get-date)} | remove-item -force -recurse
