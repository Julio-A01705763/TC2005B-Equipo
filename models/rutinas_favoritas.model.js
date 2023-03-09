const rutinas= [
    {
        id: "2",
        nombre: "Full Cardio",
        tipo: "Perder peso",
        descripcion: "Esta rutina va dirigida hacia las personas que quieran perder peso",
        frecuencia: 5
    },
]

module.exports = class RutinaFavorita {

    //Constructor de la clase. Sirve para crear un nuevo objeto, y en él se definen las propiedades del modelo
    constructor(nueva_rutina) {
        this.id = nueva_rutina.id || "0";
        this.nombre = nueva_rutina.nombre || "";
        this.tipo = nueva_rutina.tipo || "";
        this.descripcion = nueva_rutina.descripcion || "";
        this.frecuencia = nueva_rutina.frecuencia || "De Frecuencia Libre";
    }

    //Este método servirá para guardar de manera persistente el nuevo objeto. 
    save() {
        rutinas.push(this);
    }

    //Este método servirá para devolver los objetos del almacenamiento persistente.
    static fetchAll() {
        return rutinas;
    }
    

}