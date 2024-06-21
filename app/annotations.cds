using { joulecapappSrv } from '../srv/service.cds';

annotate joulecapappSrv.Employee with @UI.HeaderInfo: { TypeName: 'Employee', TypeNamePlural: 'Employees' };
annotate joulecapappSrv.Employee with {
  organization @Common.ValueList: {
    CollectionPath: 'Organization',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: organization_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'orgName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'city'
      },
    ],
  }
};
annotate joulecapappSrv.Employee with @UI.DataPoint #name: {
  Value: name,
  Title: 'Name',
};
annotate joulecapappSrv.Employee with {
  name @title: 'Name';
  designation @title: 'Designation';
  address @title: 'Address'
};

annotate joulecapappSrv.Employee with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: designation },
    { $Type: 'UI.DataField', Value: address },
    { $Type: 'UI.DataField', Label: 'Organization', Value: organization_ID }
];

annotate joulecapappSrv.Employee with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: designation },
    { $Type: 'UI.DataField', Value: address },
    { $Type: 'UI.DataField', Label: 'Organization', Value: organization_ID }
  ]
};

annotate joulecapappSrv.Employee with {
  organization @Common.Label: 'Organization'
};

annotate joulecapappSrv.Employee with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#name' }
];

annotate joulecapappSrv.Employee with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate joulecapappSrv.Employee with @UI.SelectionFields: [
  organization_ID
];

annotate joulecapappSrv.Organization with @UI.HeaderInfo: { TypeName: 'Organization', TypeNamePlural: 'Organizations' };
annotate joulecapappSrv.Organization with @UI.DataPoint #orgName: {
  Value: orgName,
  Title: 'Org Name',
};
annotate joulecapappSrv.Organization with {
  orgName @title: 'Org Name';
  city @title: 'City'
};

annotate joulecapappSrv.Organization with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: orgName },
    { $Type: 'UI.DataField', Value: city }
];

annotate joulecapappSrv.Organization with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: orgName },
    { $Type: 'UI.DataField', Value: city }
  ]
};

annotate joulecapappSrv.Organization with {
  employees @Common.Label: 'Employees'
};

annotate joulecapappSrv.Organization with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#orgName' }
];

annotate joulecapappSrv.Organization with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

