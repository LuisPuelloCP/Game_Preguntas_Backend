const {pool}  = require("../../db");


module.exports.QuestionController = {

    getQuestions: (req, res) => {
        try {
            pool.query("SELECT * FROM questions", (err, result) => {
                if (err) {
                    res.status(400).send({
                        message: "Error en la consulta"
                    });
                } else {
                    res.status(200).send({
                        message:"Lista de preguntas",
                        body: result,
                    })
                }
            })
        } catch (error) {
            console.log("Error getQuestions");
        }
    },

    getQuestionsCategory: (req, res) => {
        const {category} = req.params;
        try {
            pool.query(`SELECT * FROM mydb.questions WHERE category_idcategory = ${category}`, (err, result) => {
                if (err) {
                    res.status(400).send({
                        message: "Error en la consulta"
                    });
                } else {
                    res.status(200).send({
                        message:"Lista de preguntas por categoria",
                        body: result,
                    })
                }
            })
        } catch (error) {
            console.log("Error getQuestionsCategory");
        }
    }
}