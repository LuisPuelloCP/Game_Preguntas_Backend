
const {pool}  = require("../../db");


module.exports.UserController = {

    getUsers: (req, res) => {
        try {
            pool.query("SELECT * FROM players", (err, result) => {
                if (err) {
                    res.status(400).send({
                        message: "Error en la consulta"
                    });
                } else {
                    res.status(200).send({
                        message:"Lista de Usuarios",
                        body: result,
                    })
                }
            })
        } catch (error) {
            console.log("Error getUsers");
        }
    },

    getUser: (req, res) => {
        try {
            const {username} = req.params;
            pool.query(`SELECT * FROM players WHERE username = '${username}'`, (err, result) => {
                if (err) {
                    res.status(400).send({
                        message: "Error en la consulta"
                    });
                } else {
                    res.status(200).send({
                        message:"Usuario",
                        body: result,
                    })
                }
            })
        } catch (error) {
            console.log("Error getUser");
        }
    },

    createUser: (req, res) => {
        try {
            const user = req.body;
            pool.query(`INSERT INTO players (username, reward) VALUES ('${user.username}', 0)`, (err, result) => {
                if (err) {
                    res.status(400).send({
                        message: "Error en la consulta"
                    });
                } else {
                    console.log("Usuario agregado");
                    res.status(200).send({
                        message:"Usuario agregado",
                    })
                }
            });
        } catch (error) {
            console.log("Error createUser");
        }
    },

    updateUser: (req, res) => {
        try {
            const user = req.body;
            pool.query(`UPDATE players SET username = '${user.username}', reward = reward + ${user.reward} WHERE username = '${user.username}'`, (err, result) => {
                if (err) {
                    res.status(400).send({
                        message: "Error en la consulta"
                    });
                } else {
                    res.status(200).send({
                        message:"Usuario actualizado",
                    })
                }
            })
        } catch (error) {
            console.log("Error updateUser");
        }
    }
}