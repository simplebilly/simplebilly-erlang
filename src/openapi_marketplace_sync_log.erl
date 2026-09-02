-module(openapi_marketplace_sync_log).

-export([encode/1]).

-export_type([openapi_marketplace_sync_log/0]).

-type openapi_marketplace_sync_log() ::
    #{ 'completedAt' => openapi_date_time:openapi_date_time(),
       'connectionId' := binary(),
       'errorMessage' => binary(),
       'itemsFailed' := integer(),
       'itemsSynced' := integer(),
       'platform' := binary(),
       'startedAt' := openapi_date_time:openapi_date_time(),
       'status' := openapi_sync_log_status:openapi_sync_log_status(),
       'syncType' := openapi_sync_type:openapi_sync_type()
     }.

encode(#{ 'completedAt' := CompletedAt,
          'connectionId' := ConnectionId,
          'errorMessage' := ErrorMessage,
          'itemsFailed' := ItemsFailed,
          'itemsSynced' := ItemsSynced,
          'platform' := Platform,
          'startedAt' := StartedAt,
          'status' := Status,
          'syncType' := SyncType
        }) ->
    #{ 'completedAt' => CompletedAt,
       'connectionId' => ConnectionId,
       'errorMessage' => ErrorMessage,
       'itemsFailed' => ItemsFailed,
       'itemsSynced' => ItemsSynced,
       'platform' => Platform,
       'startedAt' => StartedAt,
       'status' => Status,
       'syncType' => SyncType
     }.
