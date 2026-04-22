$key = "API_KEY_PLACEHOLDER"
$uri = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$key"
$body = '{"contents":[{"parts":[{"text":"Say hello in one word"}]}]}'

try {
    $response = Invoke-RestMethod -Uri $uri -Method Post -Body $body -ContentType "application/json"
    Write-Host "SUCCESS!"
    Write-Host ($response | ConvertTo-Json -Depth 5)
} catch {
    Write-Host "ERROR: $($_.Exception.Message)"
    $reader = [System.IO.StreamReader]::new($_.Exception.Response.GetResponseStream())
    $errorBody = $reader.ReadToEnd()
    Write-Host "Response: $errorBody"
}
