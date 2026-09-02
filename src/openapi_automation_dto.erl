-module(openapi_automation_dto).

-export([encode/1]).

-export_type([openapi_automation_dto/0]).

-type openapi_automation_dto() ::
    #{ 'automationKey' := binary(),
       'config' := openapi_any_type:openapi_any_type(),
       'defaultDay' => integer(),
       'description' := binary(),
       'enabled' := boolean(),
       'kind' := binary(),
       'lastRunAt' => openapi_date_time:openapi_date_time(),
       'nextRunAt' => openapi_date_time:openapi_date_time(),
       'scheduleKind' := binary()
     }.

encode(#{ 'automationKey' := AutomationKey,
          'config' := Config,
          'defaultDay' := DefaultDay,
          'description' := Description,
          'enabled' := Enabled,
          'kind' := Kind,
          'lastRunAt' := LastRunAt,
          'nextRunAt' := NextRunAt,
          'scheduleKind' := ScheduleKind
        }) ->
    #{ 'automationKey' => AutomationKey,
       'config' => Config,
       'defaultDay' => DefaultDay,
       'description' => Description,
       'enabled' => Enabled,
       'kind' => Kind,
       'lastRunAt' => LastRunAt,
       'nextRunAt' => NextRunAt,
       'scheduleKind' => ScheduleKind
     }.
