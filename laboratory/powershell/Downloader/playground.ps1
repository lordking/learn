enum DownloadType {
    DoNot = 0
    Download = 1
    Again = 2
};

$flag =  [int]([DownloadType]::DoNot);
Write-Host "DownloadType:  $flag" 



