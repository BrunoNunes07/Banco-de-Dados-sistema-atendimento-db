CREATE TABLE IF NOT EXISTS atendimentos (
    id SERIAL PRIMARY KEY,
    fila_id INTEGER NOT NULL REFERENCES filas(id),
    atendente_id INTEGER NOT NULL REFERENCES pessoas(id),
    cliente_id INTEGER NOT NULL REFERENCES pessoas(id),
    data_hora TIMESTAMP NOT NULL DEFAULT NOW()
);