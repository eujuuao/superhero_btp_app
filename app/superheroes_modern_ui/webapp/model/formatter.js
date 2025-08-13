sap.ui.define([], function () {
    "use strict";

    return {
        /**
         * Recebe uma URL de imagem e retorna uma tag <img> completa em HTML.
         * @param {string} sUrl A URL da imagem.
         * @returns {string} A tag HTML da imagem.
         */
        createImageTag: function (sUrl) {
            if (!sUrl) {
                return ""; // Retorna nada se não houver URL
            }
            // Retorna a tag <img> com a URL e o estilo.
            // Usamos aspas simples para o style para não conflitar com as aspas duplas do src.
            return "<img src='" + sUrl + "' style='width:4rem; height:4rem; border-radius: 50%; object-fit: cover;'>";
        }
    };
});
