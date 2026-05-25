INSERT INTO ciudad (nombre_ciudad, codigo_postal) VALUES
('Cali', '760001'),
('Palmira', '763531'),
('Yumbo', '760501'),
('Jamundi', '764001'),
('Buenaventura', '764501'),
('Tulua', '763021'),
('Buga', '763041'),
('Cartago', '762021'),
('Popayan', '190001'),
('Pasto', '520001');

INSERT INTO tipo_usuario (nombre_tipo) VALUES
('cliente'),
('empleado'),
('proveedor'),
('visitante'),
('contratista'),
('asesor'),
('supervisor'),
('administrador'),
('auditor'),
('externo');

INSERT INTO condicion_especial (nombre_condicion) VALUES
('ninguna'),
('embarazo'),
('requiere silla de ruedas'),
('adulto mayor'),
('discapacidad visual'),
('discapacidad auditiva'),
('movilidad reducida'),
('acompanante medico'),
('condicion temporal'),
('prioridad legal');

INSERT INTO usuario (nombre, apellido, tipo_usuario_id, condicion_id, ciudad_id, email, telefono) VALUES
('Ana', 'Lopez', 1, 2, 1, 'ana.lopez@correo.com', '3001000001'),
('Luis', 'Martinez', 2, 1, 2, 'luis.martinez@correo.com', '3001000002'),
('Carla', 'Gomez', 3, 3, 3, 'carla.gomez@correo.com', '3001000003'),
('Pedro', 'Sanchez', 1, 4, 4, 'pedro.sanchez@correo.com', '3001000004'),
('Marta', 'Rojas', 2, 1, 5, 'marta.rojas@correo.com', '3001000005'),
('Jorge', 'Ramirez', 4, 5, 6, 'jorge.ramirez@correo.com', '3001000006'),
('Elena', 'Diaz', 5, 1, 7, 'elena.diaz@correo.com', '3001000007'),
('Sofia', 'Vargas', 6, 6, 8, 'sofia.vargas@correo.com', '3001000008'),
('Daniel', 'Moreno', 7, 7, 9, 'daniel.moreno@correo.com', '3001000009'),
('Paula', 'Herrera', 8, 8, 10, 'paula.herrera@correo.com', '3001000010');

INSERT INTO servicio (nombre_servicio, descripcion, estado) VALUES
('Despacho', 'Gestion de despacho de productos', 'activo'),
('Entrega de articulos', 'Entrega de pedidos al cliente', 'activo'),
('Recepcion de articulos', 'Recepcion e inventario', 'activo'),
('Atencion al cliente', 'Soporte y PQRS', 'activo'),
('Consultoria', 'Asesoria especializada', 'activo'),
('Facturacion', 'Emision y ajustes de factura', 'activo'),
('Garantias', 'Proceso de reclamacion de garantia', 'activo'),
('Soporte tecnico', 'Revision de fallas tecnicas', 'activo'),
('Afiliaciones', 'Registro de nuevos usuarios', 'activo'),
('Devoluciones', 'Gestion de devolucion', 'activo');

INSERT INTO empleado (usuario_id, cargo, departamento, activo) VALUES
(1, 'Auxiliar', 'Despacho', TRUE),
(2, 'Analista', 'Atencion', TRUE),
(3, 'Coordinador', 'Logistica', TRUE),
(4, 'Asesor', 'Consultoria', TRUE),
(5, 'Especialista', 'Facturacion', TRUE),
(6, 'Tecnico', 'Soporte', TRUE),
(7, 'Gestor', 'Garantias', TRUE),
(8, 'Lider', 'Afiliaciones', TRUE),
(9, 'Supervisor', 'Operaciones', TRUE),
(10, 'Administrador', 'Direccion', TRUE);

INSERT INTO turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1, '2026-05-26', '08:00', '08:20', 'finalizado'),
(2, 2, 2, '2026-05-26', '08:20', '08:40', 'finalizado'),
(3, 3, 3, '2026-05-26', '08:40', '09:00', 'finalizado'),
(4, 4, 4, '2026-05-26', '09:00', '09:20', 'en_atencion'),
(5, 5, 5, '2026-05-26', '09:20', '09:40', 'pendiente'),
(6, 6, 6, '2026-05-26', '09:40', '10:00', 'pendiente'),
(7, 7, 7, '2026-05-26', '10:00', '10:20', 'pendiente'),
(8, 8, 8, '2026-05-26', '10:20', '10:40', 'cancelado'),
(9, 9, 9, '2026-05-26', '10:40', '11:00', 'pendiente'),
(10, 10, 10, '2026-05-26', '11:00', '11:20', 'pendiente');

INSERT INTO medio_notificacion (nombre_medio) VALUES
('correo'),
('telefono'),
('sms'),
('whatsapp'),
('app movil'),
('push'),
('voz automatizada'),
('telegram'),
('web'),
('presencial');

INSERT INTO notificacion (usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 'Su turno fue registrado', '2026-05-25 08:00:00', 'enviada'),
(2, 2, 'Su turno fue registrado', '2026-05-25 08:02:00', 'enviada'),
(3, 3, 'Su turno fue registrado', '2026-05-25 08:04:00', 'enviada'),
(4, 4, 'Su turno fue registrado', '2026-05-25 08:06:00', 'enviada'),
(5, 5, 'Su turno fue registrado', '2026-05-25 08:08:00', 'enviada'),
(6, 6, 'Su turno fue registrado', '2026-05-25 08:10:00', 'pendiente'),
(7, 7, 'Su turno fue registrado', '2026-05-25 08:12:00', 'enviada'),
(8, 8, 'Su turno fue registrado', '2026-05-25 08:14:00', 'fallida'),
(9, 9, 'Su turno fue registrado', '2026-05-25 08:16:00', 'enviada'),
(10, 10, 'Su turno fue registrado', '2026-05-25 08:18:00', 'enviada');
