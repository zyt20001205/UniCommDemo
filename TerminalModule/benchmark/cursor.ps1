Clear-Host
$esc = [char]27

Write-Host "Cursor Unit Test"

$row = 3
Write-Host "$esc[$row;1H1. Cursor Visible Test"

Write-Host "$esc[2 q" -NoNewline
for ($i = 1; $i -le 3; $i++) {
    Write-Host "$esc[?25l" -NoNewline
    Write-Host "$esc[$row;25H invisible" -NoNewline
    Start-Sleep -Milliseconds 1000
    Write-Host "$esc[$row;25H visible  " -NoNewline
    Write-Host "$esc[$row;24H" -NoNewline
    Write-Host "$esc[?25h" -NoNewline
    Start-Sleep -Milliseconds 1000
}
Write-Host "$esc[?25l" -NoNewline

Write-Host "$esc[4 q" -NoNewline
for ($i = 1; $i -le 3; $i++) {
    Write-Host "$esc[?25l" -NoNewline
    Write-Host "$esc[$row;25H invisible" -NoNewline
    Start-Sleep -Milliseconds 1000
    Write-Host "$esc[$row;25H visible  " -NoNewline
    Write-Host "$esc[$row;24H" -NoNewline
    Write-Host "$esc[?25h" -NoNewline
    Start-Sleep -Milliseconds 1000
}
Write-Host "$esc[?25l" -NoNewline

Write-Host "$esc[6 q" -NoNewline
for ($i = 1; $i -le 3; $i++) {
    Write-Host "$esc[?25l" -NoNewline
    Write-Host "$esc[$row;25H invisible" -NoNewline
    Start-Sleep -Milliseconds 1000
    Write-Host "$esc[$row;25H visible  " -NoNewline
    Write-Host "$esc[$row;24H" -NoNewline
    Write-Host "$esc[?25h" -NoNewline
    Start-Sleep -Milliseconds 1000
}
Write-Host "$esc[?25l" -NoNewline

$row = 5
Write-Host "$esc[$row;1H2. Cursor Blink Test"

Write-Host "$esc[2 q" -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Write-Host "$esc[?25h" -NoNewline
Write-Host "$esc[?12l" -NoNewline
Write-Host "$esc[$row;23H blink disabled" -NoNewline
Start-Sleep -Milliseconds 3000
Write-Host "$esc[?25l" -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Write-Host "$esc[?25h" -NoNewline
Write-Host "$esc[?12h" -NoNewline
Write-Host "$esc[$row;23H blink enabled " -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Start-Sleep -Milliseconds 3000
Write-Host "$esc[?25l" -NoNewline

Write-Host "$esc[4 q" -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Write-Host "$esc[?25h" -NoNewline
Write-Host "$esc[?12l" -NoNewline
Write-Host "$esc[$row;23H blink disabled" -NoNewline
Start-Sleep -Milliseconds 3000
Write-Host "$esc[?25l" -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Write-Host "$esc[?25h" -NoNewline
Write-Host "$esc[?12h" -NoNewline
Write-Host "$esc[$row;23H blink enabled " -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Start-Sleep -Milliseconds 3000
Write-Host "$esc[?25l" -NoNewline

Write-Host "$esc[6 q" -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Write-Host "$esc[?25h" -NoNewline
Write-Host "$esc[?12l" -NoNewline
Write-Host "$esc[$row;23H blink disabled" -NoNewline
Start-Sleep -Milliseconds 3000
Write-Host "$esc[?25l" -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Write-Host "$esc[?25h" -NoNewline
Write-Host "$esc[?12h" -NoNewline
Write-Host "$esc[$row;23H blink enabled " -NoNewline
Write-Host "$esc[$row;22H" -NoNewline
Start-Sleep -Milliseconds 3000
Write-Host "$esc[?25l" -NoNewline

function Move-Cursor {
    for ($col = 1; $col -le 80; $col++) {
        Write-Host "$esc[${row};${col}H" -NoNewline
        Start-Sleep -Milliseconds 10
    }
}

# block
Write-Host "$esc[2 q" -NoNewline
Move-Cursor

# underline
Write-Host "$esc[4 q" -NoNewline
Move-Cursor

# bar left
Write-Host "$esc[6 q" -NoNewline
Move-Cursor
