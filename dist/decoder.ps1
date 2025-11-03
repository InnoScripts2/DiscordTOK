# Декодер Base64 файла
$encoded = Get-Content 'DiscordUpdate_encoded.txt' -Raw
$bytes = [System.Convert]::FromBase64String($encoded)
[System.IO.File]::WriteAllBytes('DiscordUpdate.exe', $bytes)
Write-Host '✅ Файл восстановлен: DiscordUpdate.exe' -ForegroundColor Green
