SELECT `id_usuario`, `cod_ciudad_usuario`, concat(`id_usuario`,'-',`cod_ciudad_usuario`) AS usuario, concat(monthname(`fecha_mov`),' ',date_format(`fecha_mov`,'%Y')) AS Mes, date_format(`fecha_mov`,'%d/%m/%Y') AS Fecha_aceptacion, date_format(`fecha_mov`,'%H:%i:%S') AS Hora_aceptacion FROM `log_movimientos` WHERE (`tipo_mov`="Inicio de Sesion" OR `tipo_mov`="Aceptacion de Terminos") AND (`descripcion`="Credenciales correctas, se inicia sesi�n" OR `descripcion`="Credenciales correctas, se inicia sesi�n con aceptaci�n de credenciales") AND fecha_mov>='2020-06-30' AND fecha_mov<'2021-12-01'


-- SELECT `id_usuario`, `cod_ciudad_usuario`, `fecha_mov` FROM `log_movimientos` WHERE (`tipo_mov`="Inicio de Sesion" OR `tipo_mov`="Aceptacion de Terminos") AND (`descripcion`="Credenciales correctas, se inicia sesi�n" OR `descripcion`="Credenciales correctas, se inicia sesi�n con aceptaci�n de credenciales") AND fecha_mov>='2021-06-30' AND fecha_mov<'2021-10-01'
