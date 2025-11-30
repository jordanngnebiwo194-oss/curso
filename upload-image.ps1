# PowerShell script to upload background.png to GitHub
# Requires: GitHub Personal Access Token with repo permissions
# Set your token: $env:GITHUB_TOKEN = "your_token_here"

$filePath = "assets\background.png"
$repo = "jordanngnebiwo194-oss/curso"
$branch = "main"
$path = "assets/background.png"

Write-Host "Reading image file..."
$bytes = [IO.File]::ReadAllBytes($filePath)
$base64 = [Convert]::ToBase64String($bytes)

Write-Host "Uploading to GitHub..."
$body = @{
    message = "Add background image"
    content = $base64
    branch = $branch
} | ConvertTo-Json

$headers = @{
    Authorization = "token $env:GITHUB_TOKEN"
    Accept = "application/vnd.github.v3+json"
}

try {
    $response = Invoke-RestMethod -Uri "https://api.github.com/repos/$repo/contents/$path" -Method Put -Headers $headers -Body $body -ContentType "application/json"
    Write-Host "Success! File uploaded." -ForegroundColor Green
    Write-Host "Commit SHA: $($response.content.sha)"
} catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
    if ($_.ErrorDetails.Message) {
        Write-Host $_.ErrorDetails.Message
    }
}
