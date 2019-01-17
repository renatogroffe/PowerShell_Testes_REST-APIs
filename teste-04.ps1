[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# O projeto utilizada nestes testes está em: https://github.com/renatogroffe/ASP.NET-Core-2.2_API_Docker-Compose

<#
$result = @{
 valorAtual = 110
 machineName= $env:COMPUTERNAME
}#>
$result = Invoke-RestMethod -Uri "https://localhost:5001/api/contador" -Method GET

$result

write-host  "valor_atual:" $result.valorAtual "machine_Name" $result.machineName -ForegroundColor Red -BackgroundColor DarkCyan
#com pipeline o retorno de result � o objeto utilizado para o comando convertTo-Json
$result | ConvertTo-Json
#sem pipeline eu informo qual o objeto deve ser utilizado para a conversao
ConvertTo-Json -InputObject $result | Out-File  ($env:HOMEDRIVE + $env:HOMEPATH+"\desktop\output.json")



