# created by bsturges@seic.com - let me know if you encounter any issues
$currentDate = Get-Date
$currentDate = $currentDate.ToString('MM-dd-yyyy_hh-mm-ss')
$location = (get-item -path ".\" -verbose).fullname
get-content $location'\grouplist.txt' | ForEach-Object {net group /domain $_} | Out-file $location'\userlist_'$currentDate'.txt'