[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# O projeto utilizada nestes testes está em: https://github.com/renatogroffe/ASPNETCore2.1_ApiController

$dados = @{
    nome = "Renato"
    mensagem = "Teste"
} | ConvertTo-Json

$dados

$url = "https://localhost:5001/api/comentarios"


Invoke-RestMethod  -Uri $url -Method POST -ContentType "application/json" -Body $dados

Invoke-RestMethod  -Uri $url -Method GET