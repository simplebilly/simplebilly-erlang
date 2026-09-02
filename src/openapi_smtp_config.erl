-module(openapi_smtp_config).

-export([encode/1]).

-export_type([openapi_smtp_config/0]).

-type openapi_smtp_config() ::
    #{ 'encryption' := openapi_smtp_encryption:openapi_smtp_encryption(),
       'from_address' := binary(),
       'from_name' => binary(),
       'host' := binary(),
       'password' := binary(),
       'port' := integer(),
       'timeout_seconds' => integer(),
       'username' := binary()
     }.

encode(#{ 'encryption' := Encryption,
          'from_address' := FromAddress,
          'from_name' := FromName,
          'host' := Host,
          'password' := Password,
          'port' := Port,
          'timeout_seconds' := TimeoutSeconds,
          'username' := Username
        }) ->
    #{ 'encryption' => Encryption,
       'from_address' => FromAddress,
       'from_name' => FromName,
       'host' => Host,
       'password' => Password,
       'port' => Port,
       'timeout_seconds' => TimeoutSeconds,
       'username' => Username
     }.
