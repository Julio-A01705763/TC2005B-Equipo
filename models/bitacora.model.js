const db = require('../util/database');

module.exports = class Bitacora {

    //Constructor de la clase. Sirve para crear un nuevo objeto, y en él se definen las propiedades del modelo
    constructor(nuevo_registro) {
        this.fecha = nuevo_registro.fecha || Date.now();
        this.descr_sesion = nuevo_registro.descr_sesion || "No hubo descripcion";
        this.nivel_satisf = nuevo_registro.nivel_satisf || "No marcó nivel de satisfacción";
        this.comentarios = nuevo_registro.comentarios || "No agregó comentarios";
        this.id_Usuario = nuevo_registro.id_Usuario || "No se pudo obtener el id del usuario";
    }

    //Este método servirá para guardar de manera persistente el nuevo objeto. 
    save() {
        registros.push(this);
    }

    //Este método servirá para devolver los objetos del almacenamiento persistente.
    static fetchAll() {
        return db.execute(`
            SELECT fecha, nivel_satisf, descripcion_sesion, comentarios
            FROM bitacora 
            WHERE id_cliente = 1
            ORDER BY fecha DESC;
        `);
    }

}