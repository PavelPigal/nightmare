function Remove-Filesgt {
    [CmdletBinding()]
      <#
    .SYNOPSIS
        This function remove all files greater then Number
    .DESCRIPTION
        Long description
    .EXAMPLE
        PS C:\> get-Filegt
        Explanation of what the example does
    .INPUTS
        Inputs (if any)
    .OUTPUTS
        Output (if any)
    .NOTES
        General notes
    #>
    param (

        [string]$Path=".\",
        [int]$Number = 8192
    )
    
    begin {
        
    }
    
    process {#Get-ChildItem -path $Path -af|Select-Object Name,Length| Sort-Object -descending -property length
             Get-ChildItem -Path $path  -Force | Where-Object { $_.Length -gt $Number } | Remove-Item -Force
        
    }
    
    end {
        
        
    }
}