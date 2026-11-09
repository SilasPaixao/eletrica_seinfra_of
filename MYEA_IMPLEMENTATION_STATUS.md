# MyEletricAssistent — andamento

## Incremento 1: referência externa das demandas

- Campo Prisma `Demand.idReferencia` opcional e único.
- Migration SQL não destrutiva incluída.
- `POST /api/demands/bulk` aceita `idReferencia` ou `id_referencia`, valida duplicações no lote e no banco.
- `GET /api/demands/by-reference/:idReferencia` consulta exata, autenticada e restrita a administradores.

## Pendente

- Campo no formulário de cadastro e no importador frontend.
- Revisão de idempotência, autorização e fotos na rota `finish`.
- Aplicativo desktop PySide6, integração e testes de homologação.
- Build Windows e publicação.

**Não implantar sem executar Prisma migration, gerar o cliente Prisma, validar build e testar em homologação.**
