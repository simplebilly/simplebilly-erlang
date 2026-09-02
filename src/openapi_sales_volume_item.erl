-module(openapi_sales_volume_item).

-export([encode/1]).

-export_type([openapi_sales_volume_item/0]).

-type openapi_sales_volume_item() ::
    #{ 'contact_id' := binary(),
       'contact_type' := binary(),
       'last_purchase_date' => binary(),
       'name' := binary(),
       'total_invoices' := integer(),
       'total_revenue' := binary()
     }.

encode(#{ 'contact_id' := ContactId,
          'contact_type' := ContactType,
          'last_purchase_date' := LastPurchaseDate,
          'name' := Name,
          'total_invoices' := TotalInvoices,
          'total_revenue' := TotalRevenue
        }) ->
    #{ 'contact_id' => ContactId,
       'contact_type' => ContactType,
       'last_purchase_date' => LastPurchaseDate,
       'name' => Name,
       'total_invoices' => TotalInvoices,
       'total_revenue' => TotalRevenue
     }.
