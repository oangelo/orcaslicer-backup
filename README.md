# Backup OrcaSlicer

Backup dos perfis e configuracoes do OrcaSlicer usados nas impressoras do laboratorio.

## Estrutura
- `profiles/` - Perfis de impressão e configurações do OrcaSlicer
- `configs/` - Metadados do laboratório e convenções
- `docs/` - Referências rápidas (nomenclatura, organização, etc.)

## Restaurar
```bash
./restore.sh
```

## Convenções de nomes
- Nomes consistentes, sem "Copy/Copia".
- Padronizar altura de camada em `0.20mm` e nozzle em `0.4`.
- Variacoes com sufixos curtos: `-v2`, `-draft`, `-fast`.
- Detalhes em `docs/naming.md`.

## Fora do backup
Cache, logs, OTA e HMS são ignorados para evitar ruído no repositório.

## Metadados (configs)
Veja `configs/README.md` para ideias de metadados úteis (inventário, materiais,
manutenção, versões, etc.).

## Atualizar backup
```bash
./backup.sh
```
