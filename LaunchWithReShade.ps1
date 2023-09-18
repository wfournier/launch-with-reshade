$full_launch_path = $args[0]

if (Test-Path $full_launch_path) {
    $exe_name = Split-Path $full_launch_path -leaf

    Start-Process -FilePath inject64.exe $exe_name
    Start-Process -FilePath $full_launch_path
} else {
    Write-Output "Executable not found."
}