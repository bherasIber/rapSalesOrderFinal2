@EndUserText.label: 'Consumption - Items'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Z_C_ITEMS_HERAF
  as projection on ZI_ITEMS_HERAF
{
  key Idit             as Idit,
  key Idhe             as Idhe,
      Name             as Name,
      Description      as Description,
      ReleaseDate      as ReleaseDate,
      DiscontinuedDate as DiscontinuedDate,
      @Semantics.amount.currencyCode: 'Currency_Code'
      Price            as Price,
      @Semantics.currencyCode: true
      CurrencyCode     as Currency_Code,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      Height           as Height,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      Width            as Width,
      Depth            as Depth,
      Quantity         as Quantity,
      UnitOfMeasure    as UnitOfMeasure,
      LastChangedAt    as LastChangedAt,

      /* Associations */
      _Header : redirected to parent Z_C_HEADER_HERAF
}
