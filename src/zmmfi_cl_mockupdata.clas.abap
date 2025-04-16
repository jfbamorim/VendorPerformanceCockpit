class zmmfi_cl_mockupdata definition public final create public .
  public section.
    interfaces if_oo_adt_classrun.
  private section.
    methods: populate_vendor_data
      returning value(operation_sucessfully) type sysubrc.
endclass.

class zmmfi_cl_mockupdata implementation.
  method if_oo_adt_classrun~main.
    data(vendor_success) = me->populate_vendor_data( ).
    if vendor_success = 0.
      out->write( 'Vendor data successfully inserted' ).
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
endclass.
