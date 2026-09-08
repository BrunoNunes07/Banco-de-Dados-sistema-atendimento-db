# Banco-de-Dados-sistema-atendimento-db
# Sistema de Atendimento

## Objetivo
Sistema para gerenciar o fluxo de atendimento de uma empresa, controlando
filas, atendentes e clientes atendidos.

## Público-alvo
Pequenas e médias empresas que precisam organizar filas de atendimento
(ex: suporte técnico, recepção, call center).
```mermaid
erDiagram
    PESSOAS ||--o{ ATENDIMENTOS : "é cliente em"
    PESSOAS ||--o{ ATENDIMENTOS : "atende"
    FILAS ||--o{ ATENDIMENTOS : "ocorre em"
    PESSOAS }o--o{ FILAS : "atua em"

    PESSOAS {
        int id PK
        string nome
        string email
        boolean eh_atendente
    }
    FILAS {
        int id PK
        string nome
    }
    ATENDIMENTOS {
        int id PK
        int fila_id FK
        int atendente_id FK
        int cliente_id FK
        timestamp data_hora
    }
```
