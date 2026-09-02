-module(openapi_product_category_update).

-export([encode/1]).

-export_type([openapi_product_category_update/0]).

-type openapi_product_category_update() ::
    #{ 'description' => binary(),
       'name' => binary(),
       'parentCategoryId' => binary(),
       'sortOrder' => integer()
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
