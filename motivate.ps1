# Reaches out to https://inspirobot.me API and generates INSPIRATION!
$motivator = Invoke-WebRequest -Uri https://inspirobot.me/api?generate=true | Select-Object -ExpandProperty Content
Start-Process $motivator