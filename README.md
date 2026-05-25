# Simulacro Parcial - Bases de Datos (LiMar)

Este proyecto deja lista la solucion del parcial de base de datos: Docker + PostgreSQL 14 + pgAdmin 4 + DDL + DML.

## 1) Levantar contenedores

Desde esta carpeta ejecutar:

```powershell
docker compose up -d
```

Verificar estado:

```powershell
docker ps
```

## 2) Credenciales solicitadas en el parcial

### PostgreSQL
- Usuario: `ulimar`
- Contrasena: `ex4men_db`
- Puerto host: `5433` (contenedor en `5432`)
- Contenedor: `servilimar_postgres`

### pgAdmin
- URL: http://localhost:8080
- Usuario: `usuario@servilimar.com`
- Contrasena: `limar#123`
- Contenedor: `servilimar_pgadmin`

## 3) Configurar conexion en pgAdmin

1. Entrar a pgAdmin.
2. Click derecho en **Servers** > **Register** > **Server**.
3. En **General**: Name = `Postgres14_LiMar`.
4. En **Connection**:
   - Host name/address: `postgres`
   - Port: `5432`
   - Maintenance database: `postgres`
   - Username: `ulimar`
   - Password: `ex4men_db`
5. Guardar.

## 4) Ejecutar DDL y DML

Abrir Query Tool en pgAdmin y ejecutar, en este orden:

1. `sql/01_ddl.sql`
2. `sql/02_dml.sql`

## 5) Evidencias para el video

1. Mostrar `docker compose up -d` y `docker ps`.
2. Mostrar login a pgAdmin.
3. Mostrar registro del servidor PostgreSQL y conexion exitosa.
4. Mostrar ejecucion de DDL (creacion de base `servilimar` y tablas).
5. Mostrar ejecucion de DML (minimo 10 registros por tabla).
6. Mostrar consultas de verificacion, por ejemplo:

```sql
SELECT COUNT(*) AS total_usuarios FROM usuario;
SELECT COUNT(*) AS total_turnos FROM turno;
SELECT COUNT(*) AS total_notificaciones FROM notificacion;
```

## 6) Apagar servicios

```powershell
docker compose down
```