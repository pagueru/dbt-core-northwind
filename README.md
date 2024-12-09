# dbt-core-northwind

> [!IMPORTANT]  
> Este arquivo README.md está em construção. Algumas informações podem estar incompletas ou imprecisas no momento, e serão atualizadas conforme o projeto evolui.

Este projeto tem como objetivo o aprendizado de ferramentas e tecnologias como **Docker**, **dbt**, **Postgres**, **SQL**, **Python** e **Git**. Ele foi inspirado no repositório do **[Luciano Galvão](https://github.com/lvgalvao/Northwind-SQL-Analytics)** da Jornada de Dados, que apresenta relatórios avançados utilizando SQL. O foco é replicar essas análises com as ferramentas mencionadas, promovendo aprendizado e prática em ciência de dados e engenharia de dados.

Os dados utilizados neste projeto são originários do banco de dados de exemplo **Northwind**, criado originalmente pela Microsoft para SQL Server (disponível em **[sql-server-samples](https://github.com/microsoft/sql-server-samples/tree/master)**). A base foi adaptada para **Postgres** pelo usuário **[pthom](https://github.com/pthom/northwind_psql)**.

## Descrição do Contexto

O banco de dados **Northwind** contém informações sobre uma empresa fictícia chamada **Northwind Traders**, especializada na importação e exportação de alimentos especiais. É um banco de dados de ERP que abrange:

- **Fornecedores**: Informações sobre os vendedores que fornecem os produtos.
- **Clientes**: Detalhes dos clientes que compram os produtos.
- **Funcionários**: Dados dos colaboradores da Northwind Traders.
- **Produtos**: Catálogo de produtos comercializados.
- **Transportadoras**: Detalhes das empresas responsáveis pelas entregas.
- **Pedidos e Detalhes dos Pedidos**: Transações realizadas entre os clientes e a empresa.

O banco de dados inclui 14 tabelas, e seus relacionamentos são representados em um diagrama de entidade-relacionamento.

![Diagram Northwind](./pics/northwind.png)

## Objetivos do Projeto

Os principais objetivos deste repositório são:

1. **Reprodução de Relatórios Avançados**:
   Replicar as análises apresentadas pelo Luciano Galvão, que podem ser aplicadas a empresas de todos os portes para gerar insights valiosos e apoiar decisões estratégicas.

2. **Integração de Etapas do Projeto de Data Warehouse**:
   Incorporar ideias do repositório [dataWarehouseLowBudget](https://github.com/alanceloth/dataWarehouseLowBudget), criado por Alan Lanceloth. *Mais informações serão adicionadas em breve.*

3. **Aprendizado Prático das Ferramentas**:
   Promover o aprendizado hands-on com ferramentas como Docker, dbt, Postgres, SQL, Python e Git. O objetivo é desenvolver habilidades práticas para configurar, gerenciar e executar projetos complexos, além de melhorar o entendimento do uso do GitHub para organização, versionamento e automação de projetos.

## Tecnologias Utilizadas

- **dbt-core**: Para modelagem de dados e transformação.
- **PostgreSQL**: Banco de dados relacional para armazenar e consultar os dados Northwind.
- **PgAdmin**: Interface gráfica para gerenciamento do banco de dados PostgreSQL.
- **Docker**: Ambiente isolado e configurável para executar o projeto.
- **SQL**: Linguagem principal para as transformações e análises.
- **Python**: Para automação e suporte adicional.

## Referências

- Repositório original de Luciano Galvão: [Northwind-SQL-Analytics](https://github.com/lvgalvao/Northwind-SQL-Analytics)
- Dados adaptados para Postgres: [northwind_psql](https://github.com/pthom/northwind_psql)
- Banco de dados original: [sql-server-samples](https://github.com/microsoft/sql-server-samples)
- Data Warehouse Low Budget: [dataWarehouseLowBudget](https://github.com/alanceloth/dataWarehouseLowBudget)

## Contato

GitHub: [pagueru](https://github.com/pagueru/)

LinkedIn: [Raphael Henrique Vieira Coelho](https://www.linkedin.com/in/raphaelhvcoelho/)

E-mail: [raphael.phael@gmail.com](mailto:raphael.phael@gmail.com)
