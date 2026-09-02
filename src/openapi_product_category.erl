-module(openapi_product_category).

-export([encode/1]).

-export_type([openapi_product_category/0]).

-type openapi_product_category() ::
    #{ 'description' => binary(),
       'name' := binary(),
       'parentCategoryId' => binary(),
       'sortOrder' := integer()
     }.

encode(#{ 'description' := Description,
          'name' := Name,
          'parentCategoryId' := ParentCategoryId,
          'sortOrder' := SortOrder
        }) ->
    #{ 'description' => Description,
       'name' => Name,
       'parentCategoryId' => ParentCategoryId,
       'sortOrder' => SortOrder
     }.
