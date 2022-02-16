#connect vcsa
$namevcsa = "172.30.77.131"
Connect-VIServer $namevcsa -Force



New-VMHostAccount -ID WSR -Password "Pa$$w0rd" -UserAccount

New-VIPermission -Role Readonly  -Principal "WSR" -Entity (Get-Folder -NoRecursion) 




New-VIRole -Name CompetitorWSR -Privilege (Get-VIPrivilege -id System,Datastore,VirtualMachine,VirtualMachine.Inventory,VirtualMachine.Interact,VirtualMachine.GuestOperations,VirtualMachine.Config,VirtualMachine.State,VirtualMachine.Hbr,VirtualMachine.Provisioning,VirtualMachine.Namespace)

$principal = get-VMHostAccount -id WSR
$role = Get-VIRole -Name "CompetitorWSR"

Get-VM -Name SRV, CLI, WEB-L, WEB-R, RTR-L,RTR-R, ISP | New-VIPermission -Role $role -Principal $principal -Propagate $false





#disconect vcsa

Disconnect-VIServer $namevcsa -Force

