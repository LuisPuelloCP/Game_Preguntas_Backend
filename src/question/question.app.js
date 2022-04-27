const express = require("express");

const {QuestionController} = require('./question.controller');

const router = express.Router();

module.exports.QuestionAPI = (app) => {
  router
    .get("/all", QuestionController.getQuestions)
    .get("/category/:category", QuestionController.getQuestionsCategory)
    
  app.use("/api/question", router);
};