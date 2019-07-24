﻿#requires -version 5.0
#requires -module Mediant

import-module mediant 

$mediantcredential = Get-Credential -UserName "Admin" -Message "Mediant Credential"

$mediantdevice = Get-MediantDevice -Mediant 192.168.97.21 -Credential $mediantcredential -Http http

get-MediantDeviceFileIni -MediantDevice $mediantdevice

get-xMediantDeviceSoftware -MediantDevice $mediantdevice

