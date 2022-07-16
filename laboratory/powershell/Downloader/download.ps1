& 'youtube-dl.exe --sub-lang zh-Hans --sub-format vtt --write-auto-sub ‘https://youtu.be/DaSCO7JwpGU’" 

youtube-dl.exe -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'  --print-json --yes-playlist --sub-lang zh-Hans --sub-format vtt --write-auto-sub 'https://www.youtube.com/playlist?list=PLtBfb4Y2n-pT7yF8YPi5TT042G9sCmSDG'
youtube-dl.exe   --write-info-json --yes-playlist --sub-lang zh-Hans --sub-format vtt --write-auto-sub 'https://www.youtube.com/playlist?list=PLtBfb4Y2n-pT7yF8YPi5TT042G9sCmSDG'
class YoutubeDLAdapter {
    constructor(url, params) {
        super();
        this.youtube = youtube;
    }

    play(video) {
        this.youtube.play(video);
    }
}


class DownloaderLogic {
    constructor(url, fileName) {
        this.url = url;
        this.fileName = fileName;
    }

    download() {
        console.log(`Downloading ${this.url} to ${this.fileName}`);
    }
}

class DownloaderService {
    constructor(adapter, logic) {
        this.adapter = adapter;
        this.logic = logic;
    }

    download(video) {
        this.adapter.play(video);
        this.logic.download();
    }
}

function main() {
    # const youtube = new YoutubeDLAdapter(new YoutubeDL());
    # const logic = new DownloaderLogic('https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'video.mp4');
    # const service = new DownloaderService(youtube, logic);
    # service.download('dQw4w9WgXcQ');

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
}