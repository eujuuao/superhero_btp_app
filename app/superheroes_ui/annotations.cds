using superhero_btp_appSrv as service from '../../srv/service';

annotate service.SuperHeroes with {
    name            @UI.LineItem       : [{ position: 10, label: 'Nome do Herói' }]
                    @UI.SelectionField : [{ position: 10 }]
                    @UI.Identification : [{ position: 10, label: 'Nome do Herói' }];

    superpower      @UI.LineItem       : [{ position: 20, label: 'Superpoder' }]
                    @UI.SelectionField : [{ position: 20 }]
                    @UI.Identification : [{ position: 20, label: 'Superpoder' }];

    universe        @UI.LineItem       : [{ position: 30, label: 'Universo' }]
                    @UI.SelectionField : [{ position: 30 }]
                    @UI.Identification : [{ position: 30, label: 'Universo' }];
}