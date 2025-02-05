# initialize-and-format-disk.ps1
$diskNumber = 1
$partitionStyle = 'GPT'
$driveLetter = [char]"E"

# Initialize the disk 1
Initialize-Disk -Number $diskNumber -PartitionStyle $partitionStyle -PassThru |
  New-Partition -DriveLetter $driveLetter -UseMaximumSize |
  Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk1" -Confirm:$false

