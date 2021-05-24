$sourceDir = "D:\Pictures\ToBeConverted"
$outputDir = "D:\Pictures\Converted\$(get-date -f yyyy-MM-dd)"
$dngExePath = "C:\Program Files\Adobe\Adobe DNG Converter\Adobe DNG Converter.exe"
$mainArgs = "-d " + """$outputDir""" + " -e -p2 "
$sourceFileExt = "*.cr3"
$sourceFiles = Get-ChildItem -Path $sourceDir -Recurse -Include $sourceFileExt

if ($sourceFiles.Count -gt 0) {
    New-Item -ItemType Directory -Force -Path $outputDir
}

ForEach ($file in $sourceFiles) {
    $allArgs = $mainArgs + """$file"""
    $process = start-process $dngExePath $allArgs -Wait -PassThru
    Write-Host "Processing: $file"
    if ($process.ExitCode -eq 0) {
        Write-Host "Cleaning Up: $file"
        Write-Host ""
        Remove-Item -path $file
    }
}