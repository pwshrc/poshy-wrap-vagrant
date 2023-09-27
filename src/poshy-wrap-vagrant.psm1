#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


function Invoke-VagrantHostsList {
    vagrant hosts list @args
}
Set-Alias -Name vhl -Value Invoke-VagrantHostsList
Export-ModuleMember -Function Invoke-VagrantHostsList -Alias vhl

function Invoke-VagrantScp {
    vagrant scp @args
}
Set-Alias -Name vscp -Value Invoke-VagrantScp
Export-ModuleMember -Function Invoke-VagrantScp -Alias vscp

function Invoke-VagrantSnapshotList {
    vagrant snapshot list @args
}
Set-Alias -Name vsl -Value Invoke-VagrantSnapshotList
Export-ModuleMember -Function Invoke-VagrantSnapshotList -Alias vsl

function Invoke-VagrantSnapshotTake {
    vagrant snapshot take @args
}
Set-Alias -Name vst -Value Invoke-VagrantSnapshotTake
Export-ModuleMember -Function Invoke-VagrantSnapshotTake -Alias vst

function Invoke-VagrantUp {
    vagrant up @args
}
Set-Alias -Name vup -Value Invoke-VagrantUp
Export-ModuleMember -Function Invoke-VagrantUp -Alias vup

function Invoke-VagrantUpLogged {
    vagrant up 2>&1 | tee vagrant.log
}
Set-Alias -Name vupl -Value Invoke-VagrantUpLogged
Export-ModuleMember -Function Invoke-VagrantUpLogged -Alias vupl

function Invoke-VagrantHalt {
    vagrant halt @args
}
Set-Alias -Name vh -Value Invoke-VagrantHalt
Export-ModuleMember -Function Invoke-VagrantHalt -Alias vh

function Invoke-VagrantSuspend {
    vagrant suspend @args
}
Set-Alias -Name vs -Value Invoke-VagrantSuspend
Export-ModuleMember -Function Invoke-VagrantSuspend -Alias vs

function Invoke-VagrantResume {
    vagrant resume @args
}
Set-Alias -Name vr -Value Invoke-VagrantResume
Export-ModuleMember -Function Invoke-VagrantResume -Alias vr

function Invoke-VagrantReload {
    vagrant reload @args
}
Set-Alias -Name vrl -Value Invoke-VagrantReload
Export-ModuleMember -Function Invoke-VagrantReload -Alias vrl

function Invoke-VagrantSsh {
    vagrant ssh @args
}
Set-Alias -Name vssh -Value Invoke-VagrantSsh
Export-ModuleMember -Function Invoke-VagrantSsh -Alias vssh

function Invoke-VagrantStatus {
    vagrant status @args
}
Set-Alias -Name vst -Value Invoke-VagrantStatus
Export-ModuleMember -Function Invoke-VagrantStatus -Alias vst

function Invoke-VagrantProvision {
    vagrant provision @args
}
Set-Alias -Name vp -Value Invoke-VagrantProvision
Export-ModuleMember -Function Invoke-VagrantProvision -Alias vp

function Invoke-VagrantDestroy {
    vagrant destroy @args
}
Set-Alias -Name vdstr -Value Invoke-VagrantDestroy
Export-ModuleMember -Function Invoke-VagrantDestroy -Alias vdstr

# requires vagrant-list plugin
function Invoke-VagrantList {
    vagrant list @args
}
Set-Alias -Name vl -Value Invoke-VagrantList
Export-ModuleMember -Function Invoke-VagrantList -Alias vl

# requires vagrant-hostmanager plugin
function Invoke-VagrantHostmanager {
    vagrant hostmanager @args
}
Set-Alias -Name vhst -Value Invoke-VagrantHostmanager
Export-ModuleMember -Function Invoke-VagrantHostmanager -Alias vhst
