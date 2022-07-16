#  
#  - 必须powershell版本 >= 7.0，才支持断点续传
#  - 如果禁止执行download.ps1，需设置：
#    Set-ExecutionPolicy -Scope CurrentUser Bypass
#  
#  - 如果长时间下载失败，一般是由于powershell版本混乱导致，原因不明。
#    1）先尝试进入系统默认的powershell 5
#    2）再尝试进入powershell 7，命令行输入："C:\Program Files\PowerShell\7\pwsh"
#


##### 全局参数 #####

enum DownloadType {
    DoNot = 0
    Download = 1
    Again = 2
};

##### 函数定义 #####

function CleanBackupFiles {
    param (
        $filename
    )
    $tmp = $filename.Split('.')
    $path = $tmp[0] + '*.' + $tmp[1]
    $bkup_files = Get-Item -Path $path
    
    # 找出最大的备份文件
    $maxsize_file = ""
    $maxsize = 0
    foreach ($bkup_file in $bkup_files) {
        $size = $bkup_file.length
        if ($size -gt $maxsize) {
            $maxsize = $size
            $maxsize_file = $bkup_file
        }
    }

    $format_size = [Math]::Round($maxsize / 1024 / 1024 / 1024, 2)
    Write-Host "Retain maximum file: $maxsize_file, size: $format_size GB"
    
    # 如果有多个备份文件，只保留最大的备份文件
    if ($bkup_files.Count -gt 1) {
        Write-Host "Clean backup files..."
        foreach ($bkup_file in $bkup_files) {
            if ($bkup_file -ne $maxsize_file) {
                Write-Host "Remove Backup file: $bkup_file"
                $bkup_file.Delete()
            }
        }
    }

    Return $maxsize_file
}

function BackupFile {
    param (
        $filename
    )

    $testFile = Test-Path -Path $filename -PathType leaf
    if ($testFile -eq $true) {
        $tmp = $filename.Split('.')
        $rand = Get-Random -Minimum 1000 -Maximum 9999
        $newDestination = $tmp[0] + '_bk' + $rand + '.' + $tmp[1]

        Write-Host "Backup $filename to $newDestination"
        Move-Item -Path $filename -Destination $newDestination
    }
}

function RecoveryBackupfile {
    param (
        $retain_file,
        $destination
    )

    $testFile = Test-Path -Path $retain_file -PathType leaf
    if (($testFile -eq $true) -and ($destination -ne $retain_file)) {
        Write-Host "Move $retain_file to $destination"
        Move-Item -Path $retain_file -Destination $destination
    }
}

function Download {
    param (
        $downloadType,
        $item
    )
    
    # 下载文件，如果失败重试三次
    $try = 0
    $success = $false
    do {
        Try {
            if ($downloadType -eq 1) 
            {
                Write-Host "Downloading..."
                Invoke-WebRequest -Uri $item.Source -OutFile $item.Destination
            } 
            elseif ($downloadType -eq 2) 
            {
                Write-Host "Resume Downloading..."
                Invoke-WebRequest -Uri $item.Source -OutFile $item.Destination -Resume
            } 
            else 
            {
                break;
            }
            
            $success = $true
        }
        Catch {
            Write-Host "Error: $($_.Exception.Message)"
            $try++
            Write-Host "Retry download $try ..."
            $downloadType = 2

            Start-Sleep -Seconds 30
            # Invoke-WebRequest -Uri $item.Source -OutFile $item.Destination -Resume
        }

        if ($success -eq $true) {
            Write-Host "......Complete"
            break
        }
    } while ( $try -lt 3 )

    # 如果下载失败，则备份下载文件
    if ($success -eq $false) {
        Write-Host "Download failed, backup file..."
        BackupFile $item.Destination
    }
}

##### 过程定义#####

$tasks = Import-Csv .\filelist.csv
foreach ($item in $tasks) {
    Write-Host ""
    Write-Host $item.Source, $item.Destination

    $download_flag = [int]$item.Download
    Write-Host "Download flag: $download_flag"
    
    switch ($download_flag) {
        [int][DownloadType]::Download { 
            Write-Host "Download!"
            # Download -downloadType $download_flag -item $item
        }
        [int][DownloadType]::Again {
            Write-Host "Download again!"
            # $retain_file = CleanBackupFiles $item.Destination
            # RecoveryBackupfile $retain_file $item.Destination
            # Download -downloadType $download_flag -item $item
        }
        Default {
            Write-Host "Do not download!"
        }
    }
}

