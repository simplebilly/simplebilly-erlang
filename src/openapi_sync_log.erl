-module(openapi_sync_log).

-export([encode/1]).

-export_type([openapi_sync_log/0]).

-type openapi_sync_log() ::
    #{ 'completed_at' => openapi_date_time:openapi_date_time(),
       'connection_id' := binary(),
       'error_message' => binary(),
       'items_failed' := integer(),
       'items_synced' := integer(),
       'log_id' := binary(),
       'platform' := binary(),
       'started_at' := openapi_date_time:openapi_date_time(),
       'status' := binary(),
       'sync_type' := binary()
     }.

encode(#{ 'completed_at' := CompletedAt,
          'connection_id' := ConnectionId,
          'error_message' := ErrorMessage,
          'items_failed' := ItemsFailed,
          'items_synced' := ItemsSynced,
          'log_id' := LogId,
          'platform' := Platform,
          'started_at' := StartedAt,
          'status' := Status,
          'sync_type' := SyncType
        }) ->
    #{ 'completed_at' => CompletedAt,
       'connection_id' => ConnectionId,
       'error_message' => ErrorMessage,
       'items_failed' => ItemsFailed,
       'items_synced' => ItemsSynced,
       'log_id' => LogId,
       'platform' => Platform,
       'started_at' => StartedAt,
       'status' => Status,
       'sync_type' => SyncType
     }.
