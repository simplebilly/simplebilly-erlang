-module(openapi_sync_summary).

-export([encode/1]).

-export_type([openapi_sync_summary/0]).

-type openapi_sync_summary() ::
    #{ 'error_message' => binary(),
       'items_failed' => integer(),
       'items_synced' => integer()
     }.

encode(#{ 'error_message' := ErrorMessage,
          'items_failed' := ItemsFailed,
          'items_synced' := ItemsSynced
        }) ->
    #{ 'error_message' => ErrorMessage,
       'items_failed' => ItemsFailed,
       'items_synced' => ItemsSynced
     }.
