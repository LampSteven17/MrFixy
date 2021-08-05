# MR.FIXY GNU v3.0 Created By Steven Lamp 08/05/21


# MAY NEED TO RUN: Set-ExecutionPolicy -ExecutionPolicy Unrestricted to allow scripts to run on system
# TO RESET SECURITY USE: Set-ExecutionPolicy Restricted


#-Recurse TELLS ITEMS TO GO THROUGH SUBDIRECTORIES, REMOVE IF UNWANTED
Get-ChildItem -Recurse `
        | Rename-Item -NewName { $_.Name -replace '^filename[^a-zA-Z0-9\._]+','' -replace '[^a-zA-Z0-9\._]+','' }
