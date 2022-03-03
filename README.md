# Save File Backup | Elden Ring
### *You need to run the batch file as Administrator.*

#### In your destination folder you also need a folder called ***_logfiles***

You need to modify the batch file because your directories are most likely not the same as mine. [**(Line 15)**](https://github.com/KingX100/SaveFile_Backup/blob/main/backup_savefiles.cmd#L15)

If you do **_not_** want log files then remove the following:
```batch 
> "%GameBackup%\_logfiles\EldenRing_Backup_%date_time%.log"
```
from [Line 15](https://github.com/KingX100/SaveFile_Backup/blob/main/backup_savefiles.cmd#L15)

## **How it works:**

It mirrors a directory with all its subfolders and files to another location (destination folder) via the robocopy command.
