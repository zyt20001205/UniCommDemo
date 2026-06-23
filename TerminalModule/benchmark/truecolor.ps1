$ESC = [char]27

for ($g = 0; $g -le 255; $g += 8) {
    for ($r = 0; $r -le 255; $r += 3) {
        Write-Host "${ESC}[48;2;$r;$g;128m " -NoNewline
    }
    Write-Host "${ESC}[0m"
}

Write-Host "${ESC}[0m"