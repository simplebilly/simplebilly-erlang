-module(openapi_email_template_create).

-export([encode/1]).

-export_type([openapi_email_template_create/0]).

-type openapi_email_template_create() ::
    #{ 'body' := binary(),
       'name' := binary(),
       'status' := openapi_email_template_status:openapi_email_template_status(),
       'subject' := binary(),
       'variables' => openapi_any_type:openapi_any_type()
     }.

encode(#{ 'body' := Body,
          'name' := Name,
          'status' := Status,
          'subject' := Subject,
          'variables' := Variables
        }) ->
    #{ 'body' => Body,
       'name' => Name,
       'status' => Status,
       'subject' => Subject,
       'variables' => Variables
     }.
