# Backup OrcaSlicer - LaRA UERJ

Backup dos perfis e configurações do OrcaSlicer usado nas impressoras 3D do laboratório.

## Data do backup inicial
$(date '+%Y-%m-%d %H:%M:%S')

## Estrutura
- `profiles/` - Perfis de impressão e configurações do OrcaSlicer
- `configs/` - Configurações adicionais

## Impressoras
- Ender 3 (múltiplas unidades com Klipper)

## Como restaurar
```bash
# Backup do atual (se existir)
mv ~/.config/OrcaSlicer ~/.config/OrcaSlicer.backup.$(date +%Y%m%d)

# Restaurar
cp -r profiles/user ~/.config/OrcaSlicer
```

## Atualização do backup
Execute o script `backup.sh` na raiz do repositório.
