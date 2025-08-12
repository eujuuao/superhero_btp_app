using superhero_btp_appSrv as service from '../../srv/service';

// Anotação para o Cabeçalho da Página de Detalhes
annotate service.SuperHeroes with @(
    UI.HeaderInfo : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Super-Herói',
        TypeNamePlural : 'Super-Heróis',
        Title : {
            $Type : 'UI.DataField',
            Value : name
        },
        Description : {
            $Type : 'UI.DataField',
            Value : alias
        },
        ImageUrl : {
            $Type: 'UI.DataField',
            Value: imageUrl
        }
    }
);

// Anotação para as Colunas da Tabela (Lista)
annotate service.SuperHeroes with @(
    UI.LineItem : [
        { 
            $Type: 'UI.DataField', 
            Value: imageUrl, 
            Label: 'Imagem'
        },
        { 
            $Type: 'UI.DataField', 
            Value: name, 
            Label: 'Nome' 
        },
        { 
            $Type: 'UI.DataField', 
            Value: alias, 
            Label: 'Codinome' 
        },
        { 
            $Type: 'UI.DataField', 
            Value: age, 
            Label: 'Idade' 
        },
        // Ação inline (BOOST)
        {
            $Type: 'UI.DataFieldForAction',
            Action: 'superhero_btp_appSrv.boostPower',
            Label: 'Boost',
            Inline: true
        },
        // Ação inline (DELETE)
        {
            $Type: 'UI.DataFieldForAction',
            Action: 'superhero_btp_appSrv.deleteHero', // Mantive deleteHero, pois é mais provável que a ação seja para o herói
            Label: 'Delete',
            Inline: true
        }
    ]
);

// Anotação para o campo de imagem
annotate service.SuperHeroes.imageUrl with @( UI.IsImageURL : true );

// Define os campos que aparecem no corpo da página de detalhes
annotate service.SuperHeroes with @(
    UI.FieldGroup #Main : {
        $Type: 'UI.FieldGroupType',
        Data : [
            { $Type: 'UI.DataField', Value: name, Label: 'Nome' },
            { $Type: 'UI.DataField', Value: alias, Label: 'Codinome' },
            { $Type: 'UI.DataField', Value: age, Label: 'Idade' },
            { $Type: 'UI.DataField', Value: gender, Label: 'Gênero' },
            { $Type: 'UI.DataField', Value: description, Label: 'Descrição' }
        ]
    },
    UI.Facets : [
        { $Type: 'UI.ReferenceFacet', Label: 'Informações Gerais', Target: '@UI.FieldGroup#Main' }
    ]
);

// Garante que o campo da imagem seja sempre carregado

annotate service.SuperHeroes with @(
    UI.Identification : [
        { $Type: 'UI.DataField', Value: name }, // Campo de identificação principal
        { $Type: 'UI.DataField', Value: imageUrl }  // Força o carregamento do campo da imagem
    ]
);

