
$cmd = { & "C:\src\catch2-multi-threading\build\Debug\unit_tests.exe" $args }

Start-Job -Name job1 -ScriptBlock $cmd -ArgumentList "[example_1_seconds_tests.cpp]"
Start-Job -Name job2 -ScriptBlock $cmd -ArgumentList "[example_5_seconds_tests.cpp]"
Start-Job -Name job3 -ScriptBlock $cmd -ArgumentList "[example_10_seconds_tests.cpp]"

Wait-Job -Name job1
Wait-Job -Name job2
Wait-Job -Name job3

Receive-Job -Name job1 | Out-File "C:\src\catch2-multi-threading\job1.log"
Receive-Job -Name job2 | Out-File "C:\src\catch2-multi-threading\job2.log"
Receive-Job -Name job3 | Out-File "C:\src\catch2-multi-threading\job3.log"

Remove-Job -Name job1
Remove-Job -Name job2
Remove-Job -Name job3

