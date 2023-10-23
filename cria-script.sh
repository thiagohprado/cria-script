#!/usr/bin/env bash

# Testar se foi passado somente 1 argumento
[[ $# -ne 1  ]] && echo "Informar o nome do script como único argumento" && exit 1

# testar se o arquivo já existe
[[ -f $1 ]] && echo "Este arquivo já existe, tente outro nome" && exit 2

# Variáveis
editor="vim"
today=$( date +%Y%m%d )
header="#!/usr/bin/env bash
# ----------------------------------------------------------------------
# Script    : 
# Descrição : 
# Versão    : 0.1
# Autor     : Thiago Prado <thiago_prado@outlook.com>
# Data      : $today
# Licença   : GNU/GPL v3.0
# ----------------------------------------------------------------------
"

echo "$header" > $1
chmod +x $1
$editor $1

exit 0
