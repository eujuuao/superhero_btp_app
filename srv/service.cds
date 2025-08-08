using { superhero_btp_app as my } from '../db/schema.cds';

@path: '/service/superhero_btp_app'
@requires: 'authenticated-user'
service superhero_btp_appSrv {
  @odata.draft.enabled
  entity SuperHeroes as projection on my.SuperHeroes;
  @odata.draft.enabled @readonly
  entity Superpowers as projection on my.Superpowers;
  @odata.draft.enabled @readonly
  entity SecretIdentities as projection on my.SecretIdentities;
}