class zmmfi_cl_mockupdata definition public final create public .
  public section.
    interfaces if_oo_adt_classrun.
  private section.
    methods: populate_vendor_data
                returning value(operation_sucessfully) type sysubrc,
             populate_po_header
                returning value(operation_sucessfully) type sysubrc,
             populate_po_item
                returning value(operation_sucessfully) type sysubrc.
endclass.

class zmmfi_cl_mockupdata implementation.
  method if_oo_adt_classrun~main.
*    data(vendor_success) = me->populate_vendor_data( ).
*    if vendor_success = 0.
*      out->write( 'Vendor data successfully inserted' ).
*    endif.

    data(po_header_success) = me->populate_po_header( ).
    if po_header_success = 0.
      out->write( 'PO Header data successfully inserted' ).
    endif.

    data(po_item_success) = me->populate_po_item( ).
    if po_item_success = 0.
      out->write( 'PO Item data successfully inserted' ).
    endif.
  endmethod.

method populate_vendor_data.
    data: vendor_data type standard table of zmmfit_vendor,
          lv_date   type d.

      lv_date = sy-datum - 365.

      append value #( vendor_id         = 'v0001'
                      name              = 'global tech supplies'
                      email             = 'contact@globaltech.com'
                      city              = 'lisboa'
                      country           = 'portugal'
                      category          = 'elec'
                      is_certified      = 'x'
                      registration_date = lv_date
                      initial_rating    = 85
                      active            = 'x'
                      created_at        = '080000'
                      created_by        = 'admin001' ) to vendor_data.

      append value #( vendor_id         = 'v0002'
                      name              = 'eco logistics'
                      email             = 'info@ecolog.com'
                      city              = 'madrid'
                      country           = 'espanha'
                      category          = 'log'
                      is_certified      = 'x'
                      registration_date = lv_date + 10
                      initial_rating    = 75
                      active            = 'x'
                      created_at        = '083000'
                      created_by        = 'admin002' ) to vendor_data.

      append value #( vendor_id         = 'v0003'
                      name              = 'blue ocean plastics'
                      email             = 'blue@oceanplast.com'
                      city              = 'porto'
                      country           = 'portugal'
                      category          = 'pack'
                      is_certified      = ''
                      registration_date = lv_date + 20
                      initial_rating    = 68
                      active            = 'x'
                      created_at        = '090000'
                      created_by        = 'admin001' ) to vendor_data.

      append value #( vendor_id         = 'v0004'
                      name              = 'nextgen components'
                      email             = 'sales@nextgencomp.com'
                      city              = 'berlim'
                      country           = 'alemanha'
                      category          = 'elec'
                      is_certified      = 'x'
                      registration_date = lv_date + 5
                      initial_rating    = 92
                      active            = 'x'
                      created_at        = '073000'
                      created_by        = 'admin003' ) to vendor_data.

      append value #( vendor_id         = 'v0005'
                      name              = 'medica health'
                      email             = 'support@medica.com'
                      city              = 'milão'
                      country           = 'itália'
                      category          = 'med'
                      is_certified      = ''
                      registration_date = lv_date + 40
                      initial_rating    = 70
                      active            = 'x'
                      created_at        = '084500'
                      created_by        = 'admin002' ) to vendor_data.

      append value #( vendor_id         = 'v0006'
                      name              = 'sunlight textiles'
                      email             = 'hello@suntext.com'
                      city              = 'barcelona'
                      country           = 'espanha'
                      category          = 'text'
                      is_certified      = 'x'
                      registration_date = lv_date + 30
                      initial_rating    = 80
                      active            = 'x'
                      created_at        = '101500'
                      created_by        = 'admin004' ) to vendor_data.

      append value #( vendor_id         = 'v0007'
                      name              = 'aquapure filters'
                      email             = 'aqua@purefilters.com'
                      city              = 'paris'
                      country           = 'frança'
                      category          = 'watr'
                      is_certified      = ''
                      registration_date = lv_date + 12
                      initial_rating    = 65
                      active            = 'x'
                      created_at        = '094500'
                      created_by        = 'admin003' ) to vendor_data.

      append value #( vendor_id         = 'v0008'
                      name              = 'heavy duty tools'
                      email             = 'tools@hdt.com'
                      city              = 'hamburgo'
                      country           = 'alemanha'
                      category          = 'mach'
                      is_certified      = 'x'
                      registration_date = lv_date + 15
                      initial_rating    = 88
                      active            = 'x'
                      created_at        = '074000'
                      created_by        = 'admin005' ) to vendor_data.

      append value #( vendor_id         = 'v0009'
                      name              = 'innova energy'
                      email             = 'contact@innovaenergy.com'
                      city              = 'londres'
                      country           = 'reino unido'
                      category          = 'ener'
                      is_certified      = 'x'
                      registration_date = lv_date + 3
                      initial_rating    = 93
                      active            = 'x'
                      created_at        = '082000'
                      created_by        = 'admin001' ) to vendor_data.

      append value #( vendor_id         = 'v0010'
                      name              = 'smart office supplies'
                      email             = 'info@smartoffice.com'
                      city              = 'bruxelas'
                      country           = 'bélgica'
                      category          = 'offc'
                      is_certified      = ''
                      registration_date = lv_date + 18
                      initial_rating    = 72
                      active            = 'x'
                      created_at        = '093000'
                      created_by        = 'admin002' ) to vendor_data.

      modify zmmfit_vendor from table @vendor_data.
      operation_sucessfully = sy-subrc.
  endmethod.

  method populate_po_header.
    data purch_orders type standard table of zmmfit_purchord.
    append value zmmfit_purchord( po_id = 'po10000001' purchase_date = '20240417' vendor_id = 'v0001' buyer_name = 'joana pereira' total_amount = '1200.50' currency = 'eur' status = 'emitida' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000002' purchase_date = '20240418' vendor_id = 'v0002' buyer_name = 'carlos silva' total_amount = '540.00' currency = 'eur' status = 'aprovada' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000003' purchase_date = '20240419' vendor_id = 'v0005' buyer_name = 'mariana rocha' total_amount = '3000.00' currency = 'eur' status = 'pendente' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000004' purchase_date = '20240420' vendor_id = 'v0003' buyer_name = 'pedro alves' total_amount = '870.00' currency = 'eur' status = 'emitida' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000005' purchase_date = '20240422' vendor_id = 'v0010' buyer_name = 'sofia nunes' total_amount = '145.90' currency = 'eur' status = 'recebida' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000006' purchase_date = '20240423' vendor_id = 'v0008' buyer_name = 'joão ribeiro' total_amount = '12500.00' currency = 'eur' status = 'emitida' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000007' purchase_date = '20240424' vendor_id = 'v0004' buyer_name = 'ana martins' total_amount = '2300.00' currency = 'eur' status = 'cancelada' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000008' purchase_date = '20240425' vendor_id = 'v0009' buyer_name = 'luis correia' total_amount = '4890.70' currency = 'eur' status = 'aprovada' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000009' purchase_date = '20240426' vendor_id = 'v0006' buyer_name = 'rita lopes' total_amount = '980.00' currency = 'eur' status = 'recebida' ) to purch_orders.
    append value zmmfit_purchord( po_id = 'po10000010' purchase_date = '20240427' vendor_id = 'v0007' buyer_name = 'miguel dias' total_amount = '560.00' currency = 'eur' status = 'pendente' ) to purch_orders.

    modify zmmfit_purchord from table @purch_orders.
    operation_sucessfully = sy-subrc.
  endmethod.

  method populate_po_item.
    data po_items type standard table of zmmfit_po_item.

    append value zmmfit_po_item( po_id = 'po10000001' item_id = '00010' product_id = 'mat001' description = 'Circuit board' quantity_ordered = '10.00' unit = 'PC' unit_price = '120.05' currency = 'EUR' vendor_id = 'v0001' expected_delivery_date =
'20240430' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000002' item_id = '00010' product_id = 'mat010' description = 'Eco packaging set' quantity_ordered = '50.00' unit = 'ST' unit_price = '10.80' currency = 'EUR' vendor_id = 'v0002' expected_delivery_date =
'20240502' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000003' item_id = '00010' product_id = 'med005' description = 'First aid kits' quantity_ordered = '100.00' unit = 'BX' unit_price = '30.00' currency = 'EUR' vendor_id = 'v0005' expected_delivery_date =
'20240505' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000004' item_id = '00010' product_id = 'pack003' description = 'Plastic containers' quantity_ordered = '200.00' unit = 'ST' unit_price = '4.35' currency = 'EUR' vendor_id = 'v0003' expected_delivery_date =
'20240429' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000005' item_id = '00010' product_id = 'off010' description = 'Laser printers' quantity_ordered = '2.00' unit = 'PC' unit_price = '72.95' currency = 'EUR' vendor_id = 'v0010' expected_delivery_date =
'20240504' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000006' item_id = '00010' product_id = 'mach007' description = 'Drilling machines' quantity_ordered = '5.00' unit = 'PC' unit_price = '2500.00' currency = 'EUR' vendor_id = 'v0008' expected_delivery_date =
'20240508' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000006' item_id = '00020' product_id = 'mach008' description = 'Welding kit' quantity_ordered = '2.00' unit = 'ST' unit_price = '2500.00' currency = 'EUR' vendor_id = 'v0008' expected_delivery_date =
'20240510' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000007' item_id = '00010' product_id = 'comp004' description = 'Capacitors' quantity_ordered = '400.00' unit = 'ST' unit_price = '5.75' currency = 'EUR' vendor_id = 'v0004' expected_delivery_date = '20240428'
) to po_items.
    append value zmmfit_po_item( po_id = 'po10000008' item_id = '00010' product_id = 'ener002' description = 'Solar panels' quantity_ordered = '20.00' unit = 'PC' unit_price = '240.00' currency = 'EUR' vendor_id = 'v0009' expected_delivery_date =
'20240510' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000009' item_id = '00010' product_id = 'text001' description = 'Industrial fabrics' quantity_ordered = '100.00' unit = 'M2' unit_price = '9.80' currency = 'EUR' vendor_id = 'v0006' expected_delivery_date =
'20240506' ) to po_items.
    append value zmmfit_po_item( po_id = 'po10000010' item_id = '00010' product_id = 'filt006' description = 'Water filters' quantity_ordered = '80.00' unit = 'PC' unit_price = '7.00' currency = 'EUR' vendor_id = 'v0007' expected_delivery_date =
'20240501' ) to po_items.

    modify zmmfit_po_item from table @po_items.
    operation_sucessfully = sy-subrc.
  endmethod.

endclass.
