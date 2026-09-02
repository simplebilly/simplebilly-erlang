-module(openapi_box_fit).

-export([encode/1]).

-export_type([openapi_box_fit/0]).

-type openapi_box_fit() ::
    #{ 'height_cm' := float(),
       'item_count' := integer(),
       'length_cm' := float(),
       'volume_cm3' := float(),
       'width_cm' := float()
     }.

encode(#{ 'height_cm' := HeightCm,
          'item_count' := ItemCount,
          'length_cm' := LengthCm,
          'volume_cm3' := VolumeCm3,
          'width_cm' := WidthCm
        }) ->
    #{ 'height_cm' => HeightCm,
       'item_count' => ItemCount,
       'length_cm' => LengthCm,
       'volume_cm3' => VolumeCm3,
       'width_cm' => WidthCm
     }.
