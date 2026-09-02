-module(openapi_ai_worker_config).

-export([encode/1]).

-export_type([openapi_ai_worker_config/0]).

-type openapi_ai_worker_config() ::
    #{ 'auto_reply' := boolean(),
       'created_at' := openapi_date_time:openapi_date_time(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'is_active' := boolean(),
       'max_tool_calls' := integer(),
       'model' := binary(),
       'name' := binary(),
       'provider' := binary(),
       'system_prompt' := binary(),
       'tenant_id' := openapi_u_uid:openapi_u_uid(),
       'trigger_on' := list(),
       'updated_at' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'auto_reply' := AutoReply,
          'created_at' := CreatedAt,
          'id' := Id,
          'is_active' := IsActive,
          'max_tool_calls' := MaxToolCalls,
          'model' := Model,
          'name' := Name,
          'provider' := Provider,
          'system_prompt' := SystemPrompt,
          'tenant_id' := TenantId,
          'trigger_on' := TriggerOn,
          'updated_at' := UpdatedAt
        }) ->
    #{ 'auto_reply' => AutoReply,
       'created_at' => CreatedAt,
       'id' => Id,
       'is_active' => IsActive,
       'max_tool_calls' => MaxToolCalls,
       'model' => Model,
       'name' => Name,
       'provider' => Provider,
       'system_prompt' => SystemPrompt,
       'tenant_id' => TenantId,
       'trigger_on' => TriggerOn,
       'updated_at' => UpdatedAt
     }.
