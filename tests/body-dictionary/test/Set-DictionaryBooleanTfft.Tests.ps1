$TestRecordingFile = Join-Path $PSScriptRoot 'Set-DictionaryBooleanTfft.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Set-DictionaryBooleanTfft' {
    It 'PutExpanded' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Put' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
