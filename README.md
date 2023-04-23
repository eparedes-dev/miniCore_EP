
El aplicativo implementado se encarga de manejar una lista de clientes con contratos por cancelar, se basa en una 
empresa de servicio de telecomunicaciones. En la cual contamos con 4 tipos de contratos:

- Internet
- Telefonia
- Television por cable
- Triplepack(los 3 contratos anteriores en uno solo)

Cada cliente puede tener varios contratos, el aplicativo maneja una lista de clientes con los contratos que tienen de manera activa y el valor de monto de deuda que tienen desde una cierta fecha. Lo que reaiza son reportes de cuanta deuda existe de la lista de clientes de ua fecha especifica hasta otra.

Para aplicar este aplicativo primero se debe de crear la base de datos en mysql, el codigo de la base esta en el repositorio.
 
y realizar la debida modificacion en el codigo:

const sequelize = new Sequelize('nombre_basededatos', 'usuario', 'contraseña', {
    host: 'localhost',
    dialect: 'mysql',
    logging: false
})



