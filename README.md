# Backup OrcaSlicer 

Backup dos perfis e configurações do OrcaSlicer usado nas impressoras 3D do laboratório.

## Data do backup inicial
$(date '+%Y-%m-%d %H:%M:%S')

## Estrutura
- `profiles/` - Perfis de impressão e configurações do OrcaSlicer
- `configs/` - Metadados do laboratório e convenções
- `docs/` - Referências rápidas (nomenclatura, organização, etc.)

## Impressoras
- Ender 3 (múltiplas unidades com Klipper)

## Como restaurar
```bash
# Backup do atual (se existir)
mv ~/.config/OrcaSlicer ~/.config/OrcaSlicer.backup.$(date +%Y%m%d)

# Restaurar
cp -r profiles/user ~/.config/OrcaSlicer
```

Ou use o script (recomendado):
```bash
./restore.sh
```

## Convenções de nomes (resumo)
- Preferir nomes consistentes e sem "Copy/Cópia".
- Usar `@<Maquina>` quando o perfil é calibrado para uma máquina específica.
- Padronizar altura de camada em `0.20mm` e nozzle em `0.4`.
- Para variações, usar sufixos curtos: `-v2`, `-draft`, `-fast`.

Detalhes e exemplos em `docs/naming.md`.

## O que fica fora do backup
Cache, logs, OTA e HMS são ignorados para evitar ruído no repositório.

## Sugestões para configs
Veja `configs/README.md` para ideias de metadados úteis (inventário, materiais,
manutenção, versões, etc.).

## Atualização do backup
Execute o script `backup.sh` na raiz do repositório.
