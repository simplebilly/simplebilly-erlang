-module(openapi_contact_info).

-export([encode/1]).

-export_type([openapi_contact_info/0]).

-type openapi_contact_info() ::
    #{ 'hint' := binary(),
       'hintEn' := binary(),
       'role' := binary(),
       'roleEn' := binary()
     }.

encode(#{ 'hint' := Hint,
          'hintEn' := HintEn,
          'role' := Role,
          'roleEn' := RoleEn
        }) ->
    #{ 'hint' => Hint,
       'hintEn' => HintEn,
       'role' => Role,
       'roleEn' => RoleEn
     }.
