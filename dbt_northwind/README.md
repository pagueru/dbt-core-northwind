# Estrutura de Pastas do dbt

| **Pasta**        | **Descrição**                                       |
|-------------------|---------------------------------------------------|
| `models/`         | Modelos transformados (raw, stg, core, mart).     |
| `analyses/`       | SQL exploratório e análises ad hoc.               |
| `data_tests/`     | Testes personalizados para validação de dados.    |
| `docs/`           | Documentação customizada do projeto.              |
| `logs/`           | Logs de execução de comandos dbt.                 |
| `macros/`         | Funções reutilizáveis (Jinja2/SQL).               |
| `seeds/`          | Dados estáticos carregados no banco (CSV).        |
| `snapshots/`      | Dados históricos com rastreamento de mudanças.    |

## Descrição Detalhada das Pastas

### `models/`

- **Propósito:** Onde ficam os arquivos SQL que definem os **modelos transformados**.
- **Uso:** Criação de tabelas ou views organizadas por camadas (`raw`, `stg`, `core`, `mart`).
- **Importância:** Parte central do projeto dbt, onde ocorre a transformação e modelagem de dados.

### `analyses/`

- **Propósito:** Criar **análises exploratórias** e ad hoc em SQL que não serão materializadas no banco.
- **Uso:** Queries que ajudam na tomada de decisão, mas que não precisam virar tabelas.

### `data_tests/`

- **Propósito:** Contém **testes personalizados** para validar a integridade e a qualidade dos dados.
- **Uso:** Criar scripts SQL para verificar condições específicas, executados com `dbt test`.

### `docs/`

- **Propósito:** Contém arquivos de documentação customizados para o projeto.
- **Uso:** Explicações ou definições sobre modelos, transformações ou processos.

### `logs/`

- **Propósito:** Armazena logs gerados durante a execução de comandos dbt.
- **Uso:** Diagnosticar problemas e revisar etapas de execução.

### `macros/`

- **Propósito:** Contém **macros** (funções customizadas em Jinja2/SQL) reutilizáveis no projeto.
- **Uso:** Criar templates SQL e automatizar tarefas repetitivas.

### `seeds/`

- **Propósito:** Contém **dados estáticos** (CSV) carregados no banco como tabelas.
- **Uso:** Tabelas auxiliares ou de lookup carregadas com `dbt seed`.

### `snapshots/`

- **Propósito:** Gerenciar **dados históricos** com rastreamento de mudanças ao longo do tempo.
- **Uso:** Criar tabelas que armazenam versões históricas dos dados, executadas com `dbt snapshot`.
