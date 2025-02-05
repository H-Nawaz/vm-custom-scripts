# initialize-and-format-disk.ps1
$diskNumber = 1
$partitionStyle = 'GPT'
$driveLetter = [char]"E"

$diskNumber2 = 2
$driveLetter2 = [char]"F"

# Initialize the disk 1
Initialize-Disk -Number $diskNumber -PartitionStyle $partitionStyle -PassThru |
  New-Partition -DriveLetter $driveLetter -UseMaximumSize |
  Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk1" -Confirm:$false

  # Initialize the disk 2
Initialize-Disk -Number $diskNumber2 -PartitionStyle $partitionStyle -PassThru |
New-Partition -DriveLetter $driveLetter2 -UseMaximumSize |
Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk2" -Confirm:$false

