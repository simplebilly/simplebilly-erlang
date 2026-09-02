-module(openapi_proforma_invoice_create).

-export([encode/1]).

-export_type([openapi_proforma_invoice_create/0]).

-type openapi_proforma_invoice_create() ::
    #{ 'convertedAt' => openapi_date_time:openapi_date_time(),
       'convertedToInvoiceId' => binary(),
       'currency' := openapi_currency_code:openapi_currency_code(),
       'customerId' => binary(),
       'customerSnapshot' => openapi_any_type:openapi_any_type(),
       'issueDate' := calendar:date(),
       'lineItems' := openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'orderNumber' => binary(),
       'paymentDueDate' => calendar:date(),
       'quotationId' => binary(),
       'status' := openapi_proforma_invoice_status:openapi_proforma_invoice_status(),
       'subtotal' := binary(),
       'totalAmount' := binary(),
       'totalTax' := binary()
     }.

encode(#{ 'convertedAt' := ConvertedAt,
          'convertedToInvoiceId' := ConvertedToInvoiceId,
          'currency' := Currency,
          'customerId' := CustomerId,
          'customerSnapshot' := CustomerSnapshot,
          'issueDate' := IssueDate,
          'lineItems' := LineItems,
          'notes' := Notes,
          'orderNumber' := OrderNumber,
          'paymentDueDate' := PaymentDueDate,
          'quotationId' := QuotationId,
          'status' := Status,
          'subtotal' := Subtotal,
          'totalAmount' := TotalAmount,
          'totalTax' := TotalTax
        }) ->
    #{ 'convertedAt' => ConvertedAt,
       'convertedToInvoiceId' => ConvertedToInvoiceId,
       'currency' => Currency,
       'customerId' => CustomerId,
       'customerSnapshot' => CustomerSnapshot,
       'issueDate' => IssueDate,
       'lineItems' => LineItems,
       'notes' => Notes,
       'orderNumber' => OrderNumber,
       'paymentDueDate' => PaymentDueDate,
       'quotationId' => QuotationId,
       'status' => Status,
       'subtotal' => Subtotal,
       'totalAmount' => TotalAmount,
       'totalTax' => TotalTax
     }.
