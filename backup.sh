#!/bin/bash
# Script para atualizar backup do OrcaSlicer

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
ORCASLICER_CONFIG="$HOME/.config/OrcaSlicer"

cd "$REPO_DIR"

echo "=== Atualizando backup do OrcaSlicer ==="

# Copiar arquivos atualizados
if [ -d "$ORCASLICER_CONFIG" ]; then
    rsync -av --delete \
        --exclude "cache/" \
        --exclude "log/" \
        --exclude "ota/" \
        --exclude "hms/" \
        "$ORCASLICER_CONFIG"/ ./profiles/
    echo "✓ Perfis sincronizados"
else
    echo "✗ Diretório do OrcaSlicer não encontrado"
    exit 1
fi

# Commit e push
git add .
if git diff-index --quiet HEAD --; then
    echo "✓ Nenhuma alteração detectada"
else
    git commit -m "Backup automático - $(date '+%Y-%m-%d %H:%M')"
    git push
    echo "✓ Backup enviado para GitHub"
fi
