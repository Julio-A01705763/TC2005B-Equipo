const mediciones = [

]

module.exports = class Progreso {
    //Este método servirá para guardar de manera persistente el nuevo objeto. 
    save() {
        mediciones.push(this);
    }

    //Este método servirá para devolver los objetos del almacenamiento persistente.
    static fetchAll() {
        return mediciones;
    }

}