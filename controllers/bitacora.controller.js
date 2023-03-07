const Registro = require("../models/bitacora.model");

exports.get_bitacora = (request, response, next) => {
    response.render("bitacora", {registros: Registro.fetchAll()});
}

exports.post_bitacora = (request,response,next) => {
    const registro = new Registro({
        fecha: request.body.fecha,
        descr_sesion: request.body.descr_sesion,
        nivel_satisf: request.body.nivel_satisf,
        comentarios: request.body.comentarios,
    })
    registro.save();
    response.redirect('/');
}