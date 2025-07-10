CREATE OR REPLACE TABLE TEST_TABLE (
    ID INT AUTOINCREMENT,                -- Identificador único
    NOMBRE STRING,                       -- Nombre de la entidad o persona
    FECHA_CREACION DATE,                 -- Fecha de creación
    ACTIVO BOOLEAN,                      -- Estado activo/inactivo
    CATEGORIA STRING,                    -- Categoría o tipo
    IMPORTE NUMBER(10,2),                -- Importe en euros
    OBSERVACIONES STRING,               -- Comentarios libres
    FECHA_ULTIMA_ACTUALIZACION TIMESTAMP, -- Última actualización
    TIPO_CLIENTE STRING,                 -- Tipo de cliente (p. ej. 'NUEVO', 'RECURRENTE')
    PUNTAJE_SATISFACCION NUMBER(3,1)     -- Satisfacción (de 0 a 10)
);


INSERT INTO TEST_TABLE (NOMBRE, FECHA_CREACION, ACTIVO, CATEGORIA, IMPORTE, OBSERVACIONES, FECHA_ULTIMA_ACTUALIZACION, TIPO_CLIENTE, PUNTAJE_SATISFACCION)
VALUES
('Juan Pérez', '2024-12-01', TRUE, 'ORO', 1520.50, 'Cliente preferente', '2025-07-09 10:25:00', 'RECURRENTE', 9.2),
('María García', '2025-01-15', FALSE, 'PLATA', 780.00, 'Inactivo desde abril', '2025-06-10 18:44:00', 'NUEVO', 7.5),
('Lucía Fernández', '2025-03-30', TRUE, 'BRONCE', 320.25, NULL, '2025-07-01 08:30:00', 'RECURRENTE', 8.0),
('Pedro Sánchez', '2025-06-05', TRUE, 'ORO', 2200.00, 'Alta satisfacción', '2025-07-09 20:15:00', 'RECURRENTE', 9.9),
('Ana López', '2025-07-01', TRUE, 'PLATA', 1020.30, 'Cliente nuevo con potencial', CURRENT_TIMESTAMP, 'NUEVO', 8.7),
('María López', '2025-07-09', TRUE, 'PLATA', 987.30, 'Cliente nuevo con potencial', CURRENT_TIMESTAMP, 'NUEVO', 8.7);