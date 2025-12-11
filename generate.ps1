# Script to generate image with ./build/main.exe and save it to filename passed as argument
# This script also tells the user how time it took to generate the image.

param (
    [string]$outputFilename
)

# Check if output filename is provided
if (-not $outputFilename) {
    Write-Host "Usage: .\generate.ps1 <output-filename>"
    exit 1
}

# Start the timer
$startTime = Get-Date
Write-Host "Generating image, please wait..."

# Run the main executable to generate the image
.\build\RayTracer.exe > $outputFilename

# Stop the timer
$endTime = Get-Date
$duration = $endTime - $startTime

# Output the time taken
Write-Host "Image generated and saved to '$outputFilename'."
Write-Host "Time taken: $($duration.TotalSeconds) seconds."
