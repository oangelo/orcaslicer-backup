#!/bin/bash
# Restaura a configuracao do OrcaSlicer em uma maquina limpa

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
ORCASLICER_CONFIG="$HOME/.config/OrcaSlicer"
BACKUP_DIR="$HOME/.config/OrcaSlicer.backup.$(date +%Y%m%d-%H%M%S)"

if [ ! -d "$REPO_DIR/profiles" ]; then
    echo "✗ Repositorio nao encontrado em $REPO_DIR"
    exit 1
fi

mkdir -p "$HOME/.config"

if [ -d "$ORCASLICER_CONFIG" ]; then
    echo "→ Backup do atual em $BACKUP_DIR"
    mv "$ORCASLICER_CONFIG" "$BACKUP_DIR"
fi

echo "→ Restaurando perfis"
rsync -av \
    --exclude "cache/" \
    --exclude "log/" \
    --exclude "ota/" \
    --exclude "hms/" \
    "$REPO_DIR/profiles/" "$ORCASLICER_CONFIG/"

echo "✓ Configuracao restaurada"
