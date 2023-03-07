exports.inicio = (request, response, next) => {
    response.render('home/inicio');
}

exports.iniciar_sesion = (request,response,next) => {
    response.render('home/iniciar_sesion');
}