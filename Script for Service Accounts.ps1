﻿Get-aduser -Filter 'PasswordNeverExpires -eq $True' | export-Csv -Path C:\