[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# O projeto utilizada nestes testes está em: https://github.com/renatogroffe/ASP.NET-Core-2.2_API_Docker-Compose

For ($i = 0; $i -lt 5; $i++) {
    $resultado = Invoke-WebRequest -Uri "https://localhost:5001/api/contador" -Method GET
    $resultado.Content
}
