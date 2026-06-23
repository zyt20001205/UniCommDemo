$ESC = [char]27

for ($i = 0; $i -lt 256; $i++) {
    $n = "{0:D3}" -f $i
    Write-Host "${ESC}[48;5;${i}m $n " -NoNewline

    if (($i + 1) % 16 -eq 0) {
        Write-Host "${ESC}[0m"
    }
}
Write-Host "${ESC}[0m"