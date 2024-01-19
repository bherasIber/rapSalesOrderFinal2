@AbapCatalog.sqlViewName: 'ZV_ITEMS_2985'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Interface - Items'
define view ZI_ITEMS_HERAF 
  as select from zitems_heraf as Items
  association        to parent ZI_HEADER_HERAF as _Header   on $projection.idhe = _Header.Id
  association [0..1] to I_Currency              as _Currency on $projection.CurrencyCode = _Currency.Currency
{
  key idit             as Idit,
  key idhe             as idhe,
      name             as Name,
      description      as Description,
      releasedate      as ReleaseDate,
      discontinueddate as DiscontinuedDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price            as Price,
      currencycode    as CurrencyCode,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      width            as Width,
      depth            as Depth,
      quantity         as Quantity,
      unitofmeasure    as UnitOfMeasure,
      lastchangedat    as LastChangedAt,
      _Header,
      _Currency
}
