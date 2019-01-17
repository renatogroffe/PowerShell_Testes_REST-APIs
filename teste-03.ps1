[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# O projeto utilizada nestes testes está em: https://github.com/renatogroffe/ASP.NET-Core-2.2_API_Docker-Compose

$result = Invoke-RestMethod -Uri "https://localhost:5001/api/contador" -Method GET

$result

$result.valorAtual

$result.machineName

$result | ConvertTo-Json
