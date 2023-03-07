const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');

const app = express();

app.use(express.static(path.join(__dirname, 'public')));

app.use(bodyParser.urlencoded({extended: false}));

app.set('view engine', 'ejs');
app.set('views', 'views');

const rutasHome = require('./routes/home.routes');

app.use('/home', rutasHome);


const rutasBitacora = require('./routes/bitacora.routes');

app.use('/', rutasBitacora);

app.use((request, response, next) => {
    console.log("Page not found!")
    response.status(404);
    
    //Envía la respuesta al cliente
    response.send('Lo sentimos, esta ruta no existe');
});

app.listen(3000);
