sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "../model/formatter" // <-- ADICIONE ESTA LINHA
], function (Controller, formatter) { // <-- ADICIONE 'formatter' AQUI
    "use strict";

    return Controller.extend("com.sap.heroes.controller.Worklist", {
        formatter: formatter, // <-- ADICIONE ESTA LINHA AQUI

        onInit: function () {
            // Lógica de inicialização, se necessário
        },

        onPress: function (oEvent) {
            // Lógica para quando o usuário clicar em um item da lista
            // Por enquanto, não faz nada
        }
    });
});
