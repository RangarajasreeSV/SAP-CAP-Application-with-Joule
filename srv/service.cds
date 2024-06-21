using { joulecapapp as my } from '../db/schema.cds';

@path: '/service/joulecapapp'
@requires: 'authenticated-user'
service joulecapappSrv {
  @odata.draft.enabled
  entity Employee as projection on my.Employee;
  @odata.draft.enabled
  entity Organization as projection on my.Organization;
}