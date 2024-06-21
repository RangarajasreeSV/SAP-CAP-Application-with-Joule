namespace joulecapapp;
using { cuid } from '@sap/cds/common';

entity Employee : cuid {
  name: String(100);
  designation: String(100);
  address: String(200);
  organization: Association to Organization;
}

entity Organization : cuid {
  orgName: String(100);
  city: String(100);
  employees: Association to many Employee on employees.organization = $self;
}

