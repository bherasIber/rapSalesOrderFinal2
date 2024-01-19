CLASS zcl_insert_data_pro_fin_heraf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_pro_fin_heraf IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*/  Declaración de variables
    DATA:
      ls_header TYPE ztheader_heraf,
      ls_items  TYPE  zitems_heraf,
      lt_header TYPE TABLE OF ztheader_heraf,
      lt_items  TYPE TABLE OF zitems_heraf.

*/  Borramos datos previsos
    DELETE FROM: ztheader_heraf,
                 zitems_heraf.

    ls_header-id           = '1'.
    ls_header-email        = 'rcollar0@oaic.gov.au'.
    ls_header-firstname    = 'Raimund'.
    ls_header-lastname     = 'Collar'.
    ls_header-country      = 'Austria'.
    ls_header-createon     = cl_abap_context_info=>get_system_date( ).
    ls_header-deliverydate = '20230122'.
    ls_header-orderstatus  = '001'.
    ls_header-imageurl     = 'http://dummyimage.com/113x100.png/5fa2dd/ffffff'.
    APPEND ls_header TO lt_header.

    ls_header-id           = '2'.
    ls_header-email        = 'wnorree1@mapquest.com'.
    ls_header-firstname    = 'Waldon'.
    ls_header-lastname     = 'Norree'.
    ls_header-country      = 'England'.
    ls_header-createon     = cl_abap_context_info=>get_system_date( ).
    ls_header-deliverydate = '20230122'.
    ls_header-orderstatus  = '001'.
    ls_header-imageurl     = 'http://dummyimage.com/124x100.png/dddddd/000000'.
    APPEND ls_header TO lt_header.

    ls_header-id           = '3'.
    ls_header-email        = 'yburgh2@dell.com'.
    ls_header-firstname    = 'Yvette'.
    ls_header-lastname     = 'Burgh'.
    ls_header-country      = 'Austria'.
    ls_header-createon     = cl_abap_context_info=>get_system_date( ).
    ls_header-deliverydate = '20230210'.
    ls_header-orderstatus  = '001'.
    ls_header-imageurl     = 'http://dummyimage.com/132x100.png/ff4444/ffffff'.
    APPEND ls_header TO lt_header.

    ls_header-id          = '4'.
    ls_header-email        = 'fottley3@usnews.com'.
    ls_header-firstname    = 'Frans'.
    ls_header-lastname     = 'Ottley'.
    ls_header-country      = 'France'.
    ls_header-createon     = cl_abap_context_info=>get_system_date( ).
    ls_header-deliverydate = '20230210'.
    ls_header-orderstatus  = '001'.
    ls_header-imageurl     = 'http://dummyimage.com/183x100.png/5fa2dd/ffffff'.
    APPEND ls_header TO lt_header.

    ls_header-id           = '5'.
    ls_header-email        = 'fcockson4@newyorker.com'.
    ls_header-firstname    = 'Freida'.
    ls_header-lastname     = 'Cockson'.
    ls_header-country      = 'England'.
    ls_header-createon     = cl_abap_context_info=>get_system_date( ).
    ls_header-deliverydate = '20230110'.
    ls_header-orderstatus  = '003'.
    ls_header-imageurl     = 'http://dummyimage.com/107x100.png/dddddd/000000'.
    APPEND ls_header TO lt_header.

    ls_header-id           = '6'.
    ls_header-email        = 'kmcgookin5@google.com.br'.
    ls_header-firstname    = 'Karylin'.
    ls_header-lastname     = 'McGookin'.
    ls_header-country      = 'France'.
    ls_header-createon     = cl_abap_context_info=>get_system_date( ).
    ls_header-deliverydate = '20230209'.
    ls_header-orderstatus  = '001'.
    ls_header-imageurl     = 'http://dummyimage.com/150x100.png/5fa2dd/ffffff'.
    APPEND ls_header TO lt_header.

    INSERT ztheader_heraf FROM TABLE @lt_header.

    ls_items-idit             = '1'.
    ls_items-idhe             = '1'.
    ls_items-name             = '88-449-4065'.
    ls_items-description      = 'Cheese - Cheddar'.
    ls_items-releasedate      = '20230122'.
    ls_items-discontinueddate = '20230222'.
    ls_items-price            = '100'.
    ls_items-height           = '15'.
    ls_items-width            = '10'.
    ls_items-depth            = '20'.
    ls_items-quantity         = '10'.
    ls_items-unitofmeasure    = 'KG'.
    APPEND ls_items TO lt_items.

    ls_items-idit             = '2'.
    ls_items-idhe             = '2'.
    ls_items-name             = '72-129-1489 '.
    ls_items-description      = 'Sauce - Sesame Thai Dressingr'.
    ls_items-releasedate      = '20230120'.
    ls_items-discontinueddate = '20230220'.
    ls_items-price            = '50'.
    ls_items-height           = '25'.
    ls_items-width            = '20'.
    ls_items-depth            = '30'.
    ls_items-quantity         = '5'.
    ls_items-unitofmeasure    = 'KG'.
    APPEND ls_items TO lt_items.

    ls_items-idit             = '3'.
    ls_items-idhe             = '3'.
    ls_items-name             = '75-180-7823'.
    ls_items-description      = 'Beef - Ox Tongue, Pickled'.
    ls_items-releasedate      = '20230130'.
    ls_items-discontinueddate = '20230228'.
    ls_items-price            = '120'.
    ls_items-height           = '15'.
    ls_items-width            = '10'.
    ls_items-depth            = '20'.
    ls_items-quantity         = '12'.
    ls_items-unitofmeasure    = 'KG'.
    APPEND ls_items TO lt_items.

    ls_items-idit             = '4'.
    ls_items-idhe             = '4'.
    ls_items-name             = '43-166-9776'.
    ls_items-description      = 'Truffle Paste'.
    ls_items-releasedate      = '20230201'.
    ls_items-discontinueddate = '20230228'.
    ls_items-price            = '100'.
    ls_items-height           = '15'.
    ls_items-width            = '10'.
    ls_items-depth            = '20'.
    ls_items-quantity         = '12'.
    ls_items-unitofmeasure    = 'KG'.
    APPEND ls_items TO lt_items.

    ls_items-idit             = '5'.
    ls_items-idhe             = '5'.
    ls_items-name             = '24-443-0576'.
    ls_items-description      = 'Asparagus - White'.
    ls_items-releasedate      = '20230122'.
    ls_items-discontinueddate = '20230222'.
    ls_items-price            = '100'.
    ls_items-height           = '15'.
    ls_items-width            = '10'.
    ls_items-depth            = '20'.
    ls_items-quantity         = '30'.
    ls_items-unitofmeasure    = 'KG'.
    APPEND ls_items TO lt_items.

    ls_items-idit             = '6'.
    ls_items-idhe             = '6'.
    ls_items-name             = '53-899-0828'.
    ls_items-description      = 'Chicken - Diced'.
    ls_items-releasedate      = '20230122'.
    ls_items-discontinueddate = '20230222'.
    ls_items-price            = '150'.
    ls_items-height           = '15'.
    ls_items-width            = '10'.
    ls_items-depth            = '20'.
    ls_items-quantity         = '5'.
    ls_items-unitofmeasure    = 'KG'.
    APPEND ls_items TO lt_items.

    INSERT zitems_heraf FROM TABLE @lt_items.

    out->write( 'DONE!' ).

  ENDMETHOD.

ENDCLASS.
