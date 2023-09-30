
# Obter as informa��es da atual interface de rede sem fio conectada e manipular o texto para obter somente o SSID da rede.
$ssid = (NETSH WLAN SHOW INTERFACES).Item(8).Substring(29)
# Obter as informa��es do perfil de rede referente a interface obtida anteriormente e manipular o texto para obter somente a senha do respectivo SSID.
$senha = (NETSH WLAN SHOW PROFILE $SSID key="clear").Item(32).Substring(35)
# Desenho para deixar o visual do console mais agrad�vel
$desenho = ("*" * 50)

# Exibir as informa��es de login e senha da atual interface de rede sem fio conectada ( Wi-Fi ).
Write-Host "
$desenho

SSID  : $ssid

SENHA : $senha

$desenho
"

# Pausa para permitir que o usu�rio consiga visualizar o resultado antes de finalizar o script.
Pause
Exit
