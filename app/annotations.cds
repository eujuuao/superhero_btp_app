using { superhero_btp_appSrv } from '../srv/service.cds';

annotate superhero_btp_appSrv.SuperHeroes with @UI.HeaderInfo: { TypeName: 'Superhero', TypeNamePlural: 'Superheroes', Title: { Value: name } };
annotate superhero_btp_appSrv.SuperHeroes with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate superhero_btp_appSrv.SuperHeroes with @UI.Identification: [{ Value: name }];
annotate superhero_btp_appSrv.SuperHeroes with {
  secretIdentity @Common.ValueList: {
    CollectionPath: 'SecretIdentities',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: secretIdentity_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
    ],
  }
};
annotate superhero_btp_appSrv.SuperHeroes with {
  name @title: 'Name';
  alias @title: 'Alias';
  age @title: 'Age';
  gender @title: 'Gender';
  description @title: 'Description';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate superhero_btp_appSrv.SuperHeroes with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: name },
 { $Type: 'UI.DataField', Value: alias },
 { $Type: 'UI.DataField', Value: age },
 { $Type: 'UI.DataField', Value: gender },
 { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Secret Identity', Value: secretIdentity_ID }
];

annotate superhero_btp_appSrv.SuperHeroes with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: name },
 { $Type: 'UI.DataField', Value: alias },
 { $Type: 'UI.DataField', Value: age },
 { $Type: 'UI.DataField', Value: gender },
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy },
    { $Type: 'UI.DataField', Label: 'Secret Identity', Value: secretIdentity_ID }
  ]
};

annotate superhero_btp_appSrv.SuperHeroes with {
  secretIdentity @Common.Text: { $value: secretIdentity.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate superhero_btp_appSrv.SuperHeroes with {
  superpowers @Common.Label: 'Superpowers';
  secretIdentity @Common.Label: 'Secret Identity'
};

annotate superhero_btp_appSrv.SuperHeroes with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate superhero_btp_appSrv.SuperHeroes with @UI.SelectionFields: [
  secretIdentity_ID
];

annotate superhero_btp_appSrv.Superpowers with @UI.HeaderInfo: { TypeName: 'Superpower', TypeNamePlural: 'Superpowers', Title: { Value: name } };
annotate superhero_btp_appSrv.Superpowers with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate superhero_btp_appSrv.Superpowers with @UI.Identification: [{ Value: name }];
annotate superhero_btp_appSrv.Superpowers with {
  superhero @Common.ValueList: {
    CollectionPath: 'SuperHeroes',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: superhero_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'alias'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'age'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'gender'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate superhero_btp_appSrv.Superpowers with {
  description @title: 'Description'
};

annotate superhero_btp_appSrv.Superpowers with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Superhero', Value: superhero_ID }
];

annotate superhero_btp_appSrv.Superpowers with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Superhero', Value: superhero_ID }
  ]
};

annotate superhero_btp_appSrv.Superpowers with {
  superhero @Common.Text: { $value: superhero.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate superhero_btp_appSrv.Superpowers with {
  superhero @Common.Label: 'Superhero'
};

annotate superhero_btp_appSrv.Superpowers with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate superhero_btp_appSrv.Superpowers with @UI.SelectionFields: [
  superhero_ID
];

annotate superhero_btp_appSrv.SecretIdentities with @UI.HeaderInfo: { TypeName: 'Secret Identity', TypeNamePlural: 'Secret Identities', Title: { Value: name } };
annotate superhero_btp_appSrv.SecretIdentities with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate superhero_btp_appSrv.SecretIdentities with @UI.Identification: [{ Value: name }];
annotate superhero_btp_appSrv.SecretIdentities with {
  superhero @Common.ValueList: {
    CollectionPath: 'SuperHeroes',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: superhero_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'alias'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'age'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'gender'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate superhero_btp_appSrv.SecretIdentities with {
  description @title: 'Description'
};

annotate superhero_btp_appSrv.SecretIdentities with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Superhero', Value: superhero_ID }
];

annotate superhero_btp_appSrv.SecretIdentities with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Superhero', Value: superhero_ID }
  ]
};

annotate superhero_btp_appSrv.SecretIdentities with {
  superhero @Common.Text: { $value: superhero.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate superhero_btp_appSrv.SecretIdentities with {
  superhero @Common.Label: 'Superhero'
};

annotate superhero_btp_appSrv.SecretIdentities with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate superhero_btp_appSrv.SecretIdentities with @UI.SelectionFields: [
  superhero_ID
];

