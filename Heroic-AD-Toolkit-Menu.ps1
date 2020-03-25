function show-menu
{
    param(
        [string]$title = "Heroic's AD Toolkit"
    )

Clear-Host
Write-Host "================$title================"

Write-Host "1: Press 1 for computer enrollment."
Write-Host "2: Press 2 for computer disenrolment."
Write-Host "3: Press 3 for group policy update"
Write-Host "4: Press 4 for Administrator group policy update"
Write-Host "Q: Press Q to quit"
}

do {
    show-menu
    $input = Read-Host "What do you desire"
    switch ($input) 
            {  
            '1'{
                Clear-Host
                'Option #1 it is'
                Start-Sleep 2
            }
            '2'{
                Clear-Host
                'Option #2 it is'
                Start-Sleep 2
            }
            '3'{
                Clear-Host
                'Option #3 it is'
                Start-Sleep 2
            }
            '4'{
                Clear-Host
                'Option #4 it is'
                Start-Sleep 2
            }
            'q'{
                'Goodbye'
                Start-Sleep 2
                Exit
            }
            }
} until ($input -eq 'q')