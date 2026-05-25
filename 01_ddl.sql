CREATE DATABASE servilimar;

\c servilimar

CREATE TABLE ciudad (
    ciudad_id SERIAL PRIMARY KEY,
    nombre_ciudad VARCHAR(80) NOT NULL UNIQUE,
    codigo_postal VARCHAR(12) NOT NULL
);

CREATE TABLE tipo_usuario (
    tipo_usuario_id SERIAL PRIMARY KEY,
    nombre_tipo VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE condicion_especial (
    condicion_id SERIAL PRIMARY KEY,
    nombre_condicion VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE usuario (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    apellido VARCHAR(80) NOT NULL,
    tipo_usuario_id INT NOT NULL REFERENCES tipo_usuario(tipo_usuario_id),
    condicion_id INT REFERENCES condicion_especial(condicion_id),
    ciudad_id INT NOT NULL REFERENCES ciudad(ciudad_id),
    email VARCHAR(120) UNIQUE,
    telefono VARCHAR(20)
);

CREATE TABLE servicio (
    servicio_id SERIAL PRIMARY KEY,
    nombre_servicio VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT,
    estado VARCHAR(20) NOT NULL CHECK (estado IN ('activo', 'inactivo'))
);

CREATE TABLE empleado (
    empleado_id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL UNIQUE REFERENCES usuario(usuario_id),
    cargo VARCHAR(80) NOT NULL,
    departamento VARCHAR(80) NOT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE turno (
    turno_id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES usuario(usuario_id),
    servicio_id INT NOT NULL REFERENCES servicio(servicio_id),
    empleado_id INT NOT NULL REFERENCES empleado(empleado_id),
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    estado VARCHAR(20) NOT NULL CHECK (estado IN ('pendiente', 'en_atencion', 'finalizado', 'cancelado')),
    CONSTRAINT turno_hora_valida CHECK (hora_fin > hora_inicio)
);

CREATE TABLE medio_notificacion (
    medio_id SERIAL PRIMARY KEY,
    nombre_medio VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE notificacion (
    notificacion_id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES usuario(usuario_id),
    medio_id INT NOT NULL REFERENCES medio_notificacion(medio_id),
    mensaje TEXT NOT NULL,
    fecha_envio TIMESTAMP NOT NULL,
    estado VARCHAR(20) NOT NULL CHECK (estado IN ('enviada', 'pendiente', 'fallida'))
);

CREATE INDEX idx_turno_fecha_estado ON turno(fecha, estado);
CREATE INDEX idx_notificacion_fecha ON notificacion(fecha_envio);
