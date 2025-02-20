#!/bin/bash
if [ "$1" == "" ]
then
        echo "Padding NetoWorking"
        echo "Modo de uso: $0 dominio"
        echo "Exemplo: $0 www.businesscorp.com.br"
else
        echo """
        █ ▄▄  ██   ██▄   ██▄   ▄█    ▄     ▄▀     ▄
        █   █ █ █  █  █  █  █  ██     █  ▄▀   ▀▄   █
        █▀▀▀  █▄▄█ █   █ █   █ ██ ██   █ █ ▀▄   █ ▀
        █     █  █ █  █  █  █  ▐█ █ █  █ █   █ ▄ █
         █       █ ███▀  ███▀   ▐ █  █ █  ███ █   ▀▄
        ▀     █                 █   ██       ▀
               ▀
        """
wget $1 > /dev/null 2>&1 #Wget para abaixar o codigo fonte do site. Dev/null para deixar a tela mais limpa
sleep 0.5 #0.5 delay para o grep entrar em ação
grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > lista #filtrar saida
for url in $(cat lista) #for para ler o arquivo lista para depois resolver os ips
do
host $url | grep "has address" | sed 's/\(.*\) has address \(.*\)/\2 -> \1/'; # Resolvendo os ips
done
echo "Completed!..."
rm -rf index.html lista #apagando os arquivos abaixados
fi