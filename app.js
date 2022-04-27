const express  = require('express');
const cors = require('cors');

const {UsersAPI} = require('./src/user/user.app');
const {QuestionAPI} = require('./src/question/question.app');

const app = express();



app.use(express.json());
app.use(cors())

UsersAPI(app);
QuestionAPI(app);




app.listen(3000, () => {
    console.log(`Servidor escuchando en el puerto 3000`);
});