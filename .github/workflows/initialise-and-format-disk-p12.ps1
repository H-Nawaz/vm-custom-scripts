# initialize-and-format-disk.ps1
$diskNumber = 1
$partitionStyle = 'GPT'
$driveLetter = 'G'

$diskNumber2 = 2
$driveLetter2 = 'R'

$diskNumber3 = 3
$driveLetter3 = 'S'

# Initialize the disk 1
Initialize-Disk -Number $diskNumber -PartitionStyle $partitionStyle -PassThru |
  New-Partition -AssignDriveLetter $driveLetter -UseMaximumSize |
  Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk" -Confirm:$false

  # Initialize the disk 2
Initialize-Disk -Number $diskNumber2 -PartitionStyle $partitionStyle -PassThru |
New-Partition -AssignDriveLetter $driveLetter2 -UseMaximumSize |
Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk" -Confirm:$false

# Initialize the disk 3
Initialize-Disk -Number $diskNumber3 -PartitionStyle $partitionStyle -PassThru |
  New-Partition -AssignDriveLetter $driveLetter3 -UseMaximumSize |
  Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk" -Confirm:$false

