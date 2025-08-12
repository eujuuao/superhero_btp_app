namespace superhero_btp_app;
using { cuid, managed } from '@sap/cds/common';
using from '../app/superheroes_modern_ui/annotations';

@assert.unique: { name: [name] }
entity SuperHeroes : cuid, managed {
  name: String(100) @mandatory;
  alias: String(100);
  age: Integer;
  gender: String(10);
  description: String(500);
  
  @Core.MediaType: 'image/jpeg'
  imageUrl: LargeString;         
  superpowers: Association to many Superpowers on superpowers.superhero = $self;
  secretIdentity: Association to SecretIdentities;
}

@assert.unique: { name: [name] }
entity Superpowers : cuid, managed {
  name: String(100) @mandatory;
  description: String(500);
  superhero: Association to SuperHeroes;
}

@assert.unique: { name: [name] }
entity SecretIdentities : cuid, managed {
  name: String(100) @mandatory;
  description: String(500);
  superhero: Association to SuperHeroes;
}
