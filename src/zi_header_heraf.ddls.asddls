@AbapCatalog.sqlViewName: 'ZV_HEADER_HERF'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Interface - Header'
define root view ZI_HEADER_HERAF
  as select from ztheader_heraf as Header
  composition [*] of ZI_ITEMS_HERAF as _Items

{
  key id              as Id,
      email           as Email,
      firstname       as FirstName,
      lastname        as LastName,
      country         as Country,
      createon        as CreateOn,
      deliverydate    as DeliveryDate,
      orderstatus     as OrderStatus,
      imageurl        as ImageUrl,
      @Semantics.user.createdBy: true
      createdby       as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      createdat       as CreatedAt,
      @Semantics.user.lastChangedBy: true
      lastchangedby   as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat   as LastChangedAt,
      _Items
}
