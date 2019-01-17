[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# O projeto utilizada nestes testes está em: https://github.com/renatogroffe/ASP.NET-Core-2.2_API_Docker-Compose

$result = Invoke-WebRequest -Uri "https://localhost:5001/api/contador" -Method GET

$result

$result.Content

$objeto = $result.Content | ConvertFrom-Json

$objeto.valorAtual

$objeto.machineName