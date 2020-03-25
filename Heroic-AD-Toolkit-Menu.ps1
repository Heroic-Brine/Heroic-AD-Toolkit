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
    Write-Host "What do you desire?"
    Write-Host ""
    $input = [System.Console]::ReadKey("What do you desire") 
    $k = $input.key
    switch ($k) 
            {  
            'd1'{
                Clear-Host
                'Option #1 it is'
                'computer enrollment opening'
                Start-Sleep 2
            }
            'd2'{
                Clear-Host
                'Option #2 it is'
                'computer disenrolment opening'
                Start-Sleep 2
            }
            'd3'{
                Clear-Host
                'Option #3 it is'
                'Running Group policy update immediately'
                Start-Sleep 2
            }
            'd4'{
                Clear-Host
                'Option #4 it is'
                'please accept UAC dialog'
                Start-Sleep 2
            }
            'q'{
                'Goodbye'
                Start-Sleep 2
                Exit
            }
            }
} until ($input -eq 'q')