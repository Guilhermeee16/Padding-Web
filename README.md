# pading.sh

`pading.sh` é um script em bash que realiza o download do código fonte de uma página web fornecida como parâmetro, e extrai os endereços IP associados aos domínios encontrados nos links presentes na página.

## Como funciona
![Screenshot_39](https://github.com/user-attachments/assets/9765a3c0-2584-4c67-ad44-c9198a7b2318)

1. O script usa o comando `wget` para baixar o código HTML da página fornecida.
2. Utiliza `grep` e `cut` para filtrar os links presentes na página, extraindo os domínios.
3. Em seguida, resolve os IPs desses domínios usando o comando `host`.
4. Exibe os IPs encontrados e os domínios correspondentes.
5. Limpa os arquivos temporários criados durante a execução.

## Requisitos

- Bash
- `wget`
- `grep`
- `cut`
- `host`

Esses utilitários são comuns em sistemas Unix-like.

## Uso

Para executar o script, basta fornecer o domínio como argumento:

```bash
./pading.sh <dominio>
```
## Exemplo
./pading.sh www.businesscorp.com.br

## Como funciona o script
Se nenhum argumento for fornecido, o script exibe uma mensagem de ajuda e termina.

Caso contrário, ele faz o download da página inicial do domínio especificado.

Filtra os links encontrados e resolve os endereços IP.

Exibe os resultados no formato: IP -> Domain
Por fim, remove os arquivos temporários gerados.

## Exemplo de saída
```bash
192.168.1.1 -> example.com
93.184.216.34 -> www.example.org
```
