#This first bit is the function to display all the option in the menu showing them menu itself, does not add any functionally only looks.
function Show-Menu
{
    param(
    #made in paramater if i want to change the title form another script
        [string]$title = "Heroic's AD Toolkit"
    )
    #clears the screen the writes the menu
Clear-Host
Write-Host "================$title================"

Write-Host "1: Press 1 for computer enrollment."
Write-Host "2: Press 2 for computer disenrolment."
Write-Host "3: Press 3 for group policy update"
Write-Host "4: Press 4 for Administrator group policy update"
Write-Host "Q: Press Q to quit"
}
#to make GPUdate
$GpUpdate = $env:systemroot +"\system32\gpupdate.exe"
#this is the inifnite loop that makes the menu accept option's until closed it also makes sure that you have pressed the correct button
#as it does not react to anything other than the preselected option the loop is nessery to make sure the program dosent stop.
do {
    Show-Menu
    Write-Host "What do you desire?"
    Write-Host ""
    #This is made to reads input from the user with a single key press a read-host could also be used but that requires the user to press enter.
    $input = [System.Console]::ReadKey("What do you desire") 
    $k = $input.key
    $ElevatePath = Resolve-Path $pscommandpath\..\..\powershell-Self-Elevating-Paramater\powershell-Self-Elevating-Paramater\Self_Elevate-Paramater.ps1
    #switch to deterim which key has been pressed
    switch ($k) 
            {  
            'd1'{
                Clear-Host
                'Option #1 it is'
                'Computer enrollment opening'
                #same as line 47
                $Path1 = Resolve-Path $pscommandpath\..\..\powershell-Computer-AD-Add\powershell-Computer-AD-Add.ps1
                #same as line 49
                & $ElevatePath $Path1
                Start-Sleep 1
            }
            'd2'{
                Clear-Host
                'Option #2 it is'
                'Computer disenrolment opening'
                #makes a var that has the path one folder up from the scripts current location and the relative location of my remove computer script
                $path2 = Resolve-Path $pscommandpath\..\..\Powershell-Computer-AD-removal\Powershell-Computer-AD-Removal.ps1
                #Runs my ElevatePath script with the paramater of my computer removal script
                & $ElevatePath $path2
                Start-Sleep 1
            }
            'd3'{
                Clear-Host
                'Option #3 it is'
                'Running Group policy update immediately'
                Start-Process -filepath $GpUpdate
                Start-Sleep 5
            }
            'd4'{
                Clear-Host
                'Option #4 it is'
                'Please accept UAC dialog'
                Start-Sleep 2
            }
            'q'{
                'Goodbye'
                Start-Sleep 2
                Exit
            }
            }
} until ($input -eq 'q')