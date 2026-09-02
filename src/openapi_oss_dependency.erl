-module(openapi_oss_dependency).

-export([encode/1]).

-export_type([openapi_oss_dependency/0]).

-type openapi_oss_dependency() ::
    #{ 'dependency_type' := binary(),
       'license' => binary(),
       'name' := binary(),
       'version' := binary()
     }.

encode(#{ 'dependency_type' := DependencyType,
          'license' := License,
          'name' := Name,
          'version' := Version
        }) ->
    #{ 'dependency_type' => DependencyType,
       'license' => License,
       'name' => Name,
       'version' => Version
     }.
