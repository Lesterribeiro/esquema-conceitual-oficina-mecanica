# <img width="797" height="932" alt="DER-Oficina-Mecanica" src="https://github.com/user-attachments/assets/024954a6-a5c8-43ea-b02b-1341a6f78dcd" />
Modelagem Conceitual e Lógica – Sistema de Oficina Mecânica

Projeto de arquitetura de banco de dados relacional desenvolvido para o controle e gerenciamento de execução de **Ordens de Serviço (OS)** em uma oficina mecânica, estruturado a partir da narrativa de negócios proposta no desafio da DIO.

---

## Diagrama Entidade-Relacionamento (DER)

![Diagrama Entidade Relacionamento Oficina](./diagrams/DER-Oficina-Mecanica.png)
<img width="797" height="932" alt="DER-Oficina-Mecanica" src="https://github.com/user-attachments/assets/7c9c1a6e-4e88-4054-96d2-4ff4118ca694" />

---

## 1. Regras de Negócio e Entidades Mapeadas

O modelo relacional foi construído para refletir fielmente o fluxo operacional de uma oficina:

* **Clientes e Veículos (`1:N`):** Um cliente pode cadastrar múltiplos veículos para revisão periódica ou conserto.
* **Equipes e Mecânicos (`1:N`):** Cada veículo é designado a uma equipe específica, composta por mecânicos identificados por código, nome, endereço e especialidade. A mesma equipe responsável pela avaliação executa os serviços.
* **Ordem de Serviço (`OS`):** Documento central contendo número, data de emissão, previsão de entrega, data de conclusão, status e o registro booleano de autorização explícita do cliente antes da execução.
* **Composição de Valores (`N:N`):** O valor total da OS é calculado dinamicamente pela soma dos serviços executados (consultados em uma tabela de referência de mão de obra) e das peças utilizadas no reparo, resolvidos pelas tabelas associativas `OS_SERVICO` e `OS_PECA`.

---

## 2. Organização do Repositório

```text
/
├── diagrams/
│   ├── DER-Oficina-Mecanica.png      # Exportação visual do esquema em alta resolução
│   └── DER-Oficina-Mecanica.drawio   # Arquivo fonte editável do diagrams.net
├── sql/
│   └── script_oficina.sql            # Script DDL de criação das tabelas relacionais
└── README.md                         # Documentação técnica do projeto
```
