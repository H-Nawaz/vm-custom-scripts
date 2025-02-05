# initialize-and-format-disk.ps1
$diskNumber = 1
$partitionStyle = 'GPT'
$driveLetter = 'E'

# Initialize the disk
Initialize-Disk -Number $diskNumber -PartitionStyle $partitionStyle -PassThru |
  New-Partition -AssignDriveLetter -UseMaximumSize |
  Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk" -Confirm:$false
