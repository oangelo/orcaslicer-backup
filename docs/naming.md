# Convencoes de nomes para perfis do OrcaSlicer

Objetivo: facilitar busca, comparacao e reaproveitamento de perfis.

## Regras gerais
- Use um unico idioma (recomendado: pt-BR) e evite "Copy/Copia".
- Evite espacos duplicados e caracteres especiais desnecessarios.
- Padronize unidades: `0.20mm` para altura de camada, `0.4` para nozzle.
- Variacoes devem ter sufixos curtos e claros: `-v2`, `-draft`, `-fast`.

## Maquina (machine)
Formato sugerido:
`<Marca> <Modelo> [Mods]`

Exemplos:
- `Creality Ender3V3SE`
- `Creality Ender3V3SE + Klipper`

## Filamento (filament)
Formato sugerido:
`<Marca> <Material> [Cor] [@<Maquina>]`

Exemplos:
- `Voolt ABS Branco`
- `3dfila ABS @Hera`
- `Generic PETG @Medusa`

Use `@<Maquina>` apenas quando o filamento foi calibrado para uma maquina
especifica.

## Processo (process)
Formato sugerido:
`<Altura> <Qualidade> [Velocidade] @<Maquina> [Nozzle] [Material]`

Exemplos:
- `0.20mm Standard @Hera 0.4`
- `0.16mm Fine Fast @Medusa 0.4`
- `0.24mm Draft @Hera 0.6 PETG`

Se existir uma variacao, use sufixos curtos:
- `0.20mm Standard @Hera 0.4 -v2`
- `0.24mm Draft @Hera 0.4 -fast`
