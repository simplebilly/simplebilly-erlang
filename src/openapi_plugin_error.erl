-module(openapi_plugin_error).

-export([encode/1]).

-export_type([openapi_plugin_error/0]).

-type openapi_plugin_error() ::
    #{ 'BadRequest' := list(),
       'NotFound' := list(),
       'Unauthorized' := list(),
       'InternalError' := list(),
       'DatabaseError' := list(),
       'ValidationError' := list(),
       'NotImplemented' := binary()
     }.

encode(#{ 'BadRequest' := BadRequest,
          'NotFound' := NotFound,
          'Unauthorized' := Unauthorized,
          'InternalError' := InternalError,
          'DatabaseError' := DatabaseError,
          'ValidationError' := ValidationError,
          'NotImplemented' := NotImplemented
        }) ->
    #{ 'BadRequest' => BadRequest,
       'NotFound' => NotFound,
       'Unauthorized' => Unauthorized,
       'InternalError' => InternalError,
       'DatabaseError' => DatabaseError,
       'ValidationError' => ValidationError,
       'NotImplemented' => NotImplemented
     }.
