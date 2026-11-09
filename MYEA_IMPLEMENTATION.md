# MyEletricAssistent — integração

## Entregue
- Prisma: campo idReferencia opcional/único e migration SQL.
- Importação em lote: aceita idReferencia/id_referencia e rejeita duplicatas.
- Cadastro individual: aceita idReferencia.
- Frontend: importa JSON português ou estruturado, conserva referência, permite ID no formulário de cadastro.
- Consulta: GET /api/demands/by-reference/:idReferencia (ADMIN).
- Baixa: modo de automação opt-in via cabeçalho X-MyEA-Automation: 1, exige foto principal, status PENDING, veículo cadastrado, materiais idênticos aos planejados, e bloqueia concorrência por atualização condicional.

## Implantação
1. Backup do PostgreSQL.
2. Em ambiente de homologação, aplicar a migration com `npx prisma migrate deploy` e executar `npx prisma generate`.
3. Publicar o backend/frontend atualizado.
4. Testar manualmente a importação, a consulta por referência e uma baixa com dados fictícios.
5. Configurar MyEletricAssistent com a URL HTTPS da API.

## Limitações importantes
- Upload em armazenamento de objetos ocorre antes da transação do banco; em caso de falha, arquivos órfãos podem permanecer.
- Não foi feito teste integrado com PostgreSQL, armazenamento de objetos e servidor real.
- O fluxo manual mantém a edição de baixas existentes; automação não sobrescreve pendências.
- As fotos da execução devem ser fornecidas por caminho relativo na pasta de mídias.
- Recomendado implementar limpeza de uploads órfãos e suíte de integração antes da produção.
