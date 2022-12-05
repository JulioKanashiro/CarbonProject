var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/", function (req, res) {
    avisoController.testar(req, res);
});

router.get("/listar", function (req, res) {
    avisoController.listar(req, res);
});
router.get("/lebron", function (req, res) {
    avisoController.lebron(req, res);
});
router.get("/curry", function (req, res) {
    avisoController.curry(req, res);
});
router.get("/vinijr", function (req, res) {
    avisoController.vinijr(req, res);
});
router.get("/benzema", function (req, res) {
    avisoController.benzema(req, res);
});

router.get("/numtotal", function (req, res) {
    avisoController.numtotal(req, res);
});

router.get("/listar/:idUsuario", function (req, res) {
    avisoController.listarPorUsuario(req, res);
});

router.get("/pesquisar/:descricao", function (req, res) {
    avisoController.pesquisarDescricao(req, res);
});

router.post("/publicar/:idUsuario", function (req, res) {
    avisoController.publicar(req, res);
});

router.put("/editar/:idAviso", function (req, res) {
    avisoController.editar(req, res);
});

router.delete("/deletar/:idAviso", function (req, res) {
    avisoController.deletar(req, res);
});

module.exports = router;