using superhero_btp_appSrv as service from '../../srv/service';

// Anotação para a Tabela (List Report)
annotate service.SuperHeroes with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : imageUrl,
            Label : 'Imagem',
            @UI.Importance: #High
        },
        { $Type : 'UI.DataField', Value : name, Label : 'Nome' },
        { $Type : 'UI.DataField', Value : alias, Label : 'Codinome' },
        { $Type : 'UI.DataField', Value : age, Label : 'Idade' }
    ]
);

// Anotação para o Cabeçalho da Página de Detalhes (Object Page)
annotate service.SuperHeroes with @(
    UI.HeaderInfo : {
        TypeName : 'Super-Herói',
        TypeNamePlural : 'Super-Heróis',
        Title : { Value : name },
        Description : { Value : alias },
        ImageUrl : imageUrl
    }
);

// Anotação para os Campos da Página de Detalhes
annotate service.SuperHeroes with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Informações Gerais',
            Target : '@UI.FieldGroup#Main'
        }
    ],
    UI.FieldGroup #Main : {
        Data : [
            { $Type : 'UI.DataField', Value : name },
            { $Type : 'UI.DataField', Value : alias },
            { $Type : 'UI.DataField', Value : age },
            { $Type : 'UI.DataField', Value : gender },
            { $Type : 'UI.DataField', Value : description }
        ]
    }
);

// Anotação ESSENCIAL para dizer à UI que este campo é uma imagem
annotate service.SuperHeroes.imageUrl with @(UI.IsImageURL : true);
