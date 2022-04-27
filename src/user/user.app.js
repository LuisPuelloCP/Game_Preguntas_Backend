const express = require("express");

const {UserController} = require('./user.controller');

const router = express.Router();

module.exports.UsersAPI = (app) => {
  router
    .get("/all", UserController.getUsers)
    .get("/user/:username", UserController.getUser)
    
    .post("/create", UserController.createUser)
    .post("/update", UserController.updateUser)
    
  app.use("/api/users", router);
};
