{
  "$GMRoom":"v1",
  "%Name":"rm_boss",
  "creationCodeFile":"rooms/rm_boss/RoomCreationCode.gml",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_137D8660","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_65E38EB2","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_17212E4B","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_62DC593F","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_70E0C0C6","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_343C7BA7","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_3E856158","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_2769B5A9","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_6C45593E","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_164D00A5","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_4C1037AA","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_B6B2A5F","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_697D4D53","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_16DCAEFF","path":"rooms/rm_boss/rm_boss.yy",},
    {"name":"inst_77C79DD7","path":"rooms/rm_boss/rm_boss.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"cameras","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_3E856158","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_3E856158","objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":3.33,"scaleY":1.87,"x":82.0,"y":581.0,},
        {"$GMRInstance":"v1","%Name":"inst_2769B5A9","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_2769B5A9","objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"propertyId":{"name":"arena_trigger","path":"objects/obj_camera/obj_camera.yy",},"resource":{"name":"inst_16DCAEFF","path":"rooms/rm_boss/rm_boss.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"inst_16DCAEFF",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"propertyId":{"name":"doors","path":"objects/obj_camera/obj_camera.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":4.29,"scaleY":2.41,"x":415.0,"y":509.0,},
        {"$GMRInstance":"v1","%Name":"inst_16DCAEFF","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_16DCAEFF","objectId":{"name":"obj_arena_spawner","path":"objects/obj_arena_spawner/obj_arena_spawner.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_arena_spawner","path":"objects/obj_arena_spawner/obj_arena_spawner.yy",},"propertyId":{"name":"trigger_obj","path":"objects/obj_arena_spawner/obj_arena_spawner.yy",},"resource":{"name":"inst_2769B5A9","path":"rooms/rm_boss/rm_boss.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"inst_2769B5A9",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":347.0,"y":435.0,},
      ],"layers":[],"name":"cameras","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMRInstanceLayer":"","%Name":"Instances","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_77C79DD7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_77C79DD7","objectId":{"name":"obj_humanoid_enemy","path":"objects/obj_humanoid_enemy/obj_humanoid_enemy.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":580.0,"y":667.0,},
      ],"layers":[],"name":"Instances","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"Tiles_1","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tiles_1","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":48,"SerialiseWidth":86,"TileCompressedData":[
          -2155,-2147483648,-10,145,-27,-2147483648,-5,148,-48,-2147483648,-6,145,-25,-2147483648,-4,148,-47,-2147483648,
          50,1073742032,1073742014,1073741996,1073741978,190,191,192,1073742032,1073742014,1073741996,1073741978,
          1073742032,1073742014,1073741996,1073741978,1073742032,1073742014,1073741996,1073741978,1073742032,1073742014,
          1073741996,1073741978,1073741978,1073742032,1073742014,1073741996,1073742032,1073742014,1073741996,1073741978,
          1073742032,1073742014,1073741996,1073741978,1073742014,1073741996,1073741978,1073741979,1073742032,1073742014,
          1073741996,1073741978,1073742032,1073742014,1073741996,1073741978,1073741996,1073741978,48,-36,-2147483648,
          50,1073742033,1073742015,1073741997,1073741979,208,209,210,1073742033,1073742015,1073741997,1073741979,
          1073742033,1073742015,1073741997,1073741979,1073742033,1073742015,1073741997,1073741979,1073742033,1073742015,
          1073741997,1073741979,1073741979,1073742033,1073742015,1073741997,1073742033,1073742015,1073741997,1073741979,
          1073742033,1073742015,1073741997,1073741979,1073742015,1073741997,1073741979,1073742033,1073742033,1073742015,
          1073741997,1073741979,1073742033,1073742015,1073741997,1073741979,1073741997,1073741979,48,-36,-2147483648,
          50,1073742034,1073742016,1073741998,1073741980,154,155,154,1073742034,1073742016,1073741998,1073741980,
          1073742034,1073742016,1073741998,1073741980,172,173,172,173,174,22,1073741902,1073741902,1073741884,
          1073741866,1073741848,1073741884,1073741902,1073741884,1073741866,1073741848,1073741902,1073741884,1073741866,
          1073741902,1073741884,1073741866,1073741848,1073741902,1073741902,1073741884,1073741866,1073741902,1073741884,
          1073741866,1073741848,1073741884,1073741866,1073741848,58,-36,-2147483648,22,1073742032,1073742014,1073741996,
          1073741978,172,173,172,173,174,172,173,174,172,173,154,155,156,190,191,192,24,145,-27,18,1,43,-36,-2147483648,
          22,1073742033,1073742015,1073741997,1073741979,190,191,190,191,192,190,191,192,190,191,172,173,174,208,
          209,210,42,145,-27,36,1,61,-36,-2147483648,22,1073742034,1073742016,1073741998,1073741980,208,209,208,
          209,210,208,209,210,208,209,190,191,192,58,75,76,60,145,-27,54,1,79,-36,-2147483648,22,1073742032,1073742014,
          1073741996,1073741978,154,155,156,154,155,156,154,155,156,155,208,209,210,154,155,156,78,145,-27,72,
          1,25,-36,-2147483648,22,1073742033,1073742015,1073741997,1073741979,172,173,174,172,173,174,172,173,
          174,173,174,155,156,172,173,174,24,18,-27,90,1,43,-34,-2147483648,24,154,155,1073742034,1073742016,1073741998,
          1073741980,190,191,192,190,191,192,190,191,192,191,192,173,174,190,191,192,42,36,-27,108,1,61,-34,-2147483648,
          24,172,173,1073742032,1073742014,1073741996,1073741978,208,209,210,208,209,210,208,209,210,154,155,156,
          192,154,155,156,60,54,-27,126,1,79,-34,-2147483648,24,190,191,1073742032,1073742014,1073741996,1073741978,
          154,155,156,154,155,156,154,155,156,154,154,155,156,154,155,156,24,72,-27,144,1,25,-34,-2147483648,24,
          154,155,1073742032,1073742014,1073741996,1073741978,172,173,174,172,173,174,172,173,174,172,172,173,
          174,172,173,174,42,90,-27,162,1,43,-34,-2147483648,24,172,173,1073742033,1073742015,1073741997,1073741979,
          190,191,192,190,191,192,190,191,192,190,190,191,192,190,191,192,60,108,-27,180,2,61,145,-33,-2147483648,
          24,190,191,1073741902,1073741884,1073741902,1073741884,1073741866,1073741848,1073741902,1073741884,1073741866,
          1073741848,1073741902,1073741884,1073741866,1073741902,1073741884,1073741866,1073741848,1073741884,1073741866,
          1073741848,122,126,-27,198,1,79,-34,-2147483648,2,23,24,-6,-2147483648,15,219,220,221,222,223,224,225,
          226,227,228,229,230,231,232,-2147483648,-28,144,1,145,-34,-2147483648,2,41,42,-6,-2147483648,15,237,
          238,239,240,241,242,243,244,245,246,247,248,249,250,-2147483648,-28,162,1,145,-34,-2147483648,2,59,60,
          -6,-2147483648,15,255,256,257,258,259,260,261,262,263,264,265,266,267,268,-2147483648,-28,180,1,145,
          -34,-2147483648,2,77,78,-6,-2147483648,15,273,274,275,276,277,278,279,280,281,282,283,284,285,286,-2147483648,
          -28,198,1,145,-34,-2147483648,34,154,155,1879048216,1879048234,1879048252,1879048270,1879048216,1879048234,
          1879048252,1879048270,1879048216,1879048234,1879048252,1879048270,1879048234,1879048252,1879048270,1879048216,
          1879048234,1879048252,1879048270,1879048216,1879048234,1879048252,1879048270,1879048216,1879048216,1879048234,
          1879048252,1879048270,1879048216,1879048234,1879048252,1879048270,-4,1879048216,14,1879048234,1879048252,
          1879048270,1879048252,1879048270,1879048216,1879048234,1879048252,1879048270,1879048216,1879048234,1879048252,
          1879048270,1073741867,-34,-2147483648,52,172,173,172,173,172,173,172,173,172,173,172,173,172,173,172,
          173,172,173,172,171,172,173,172,173,172,173,171,172,1073742013,1073741995,1073741977,1073742013,1073741995,
          1073741977,1073742013,1073741995,1073741977,1073742013,1073741995,1073741977,1073742013,1073741995,1073741977,
          1073742013,1073741995,1073741977,1073742013,1073741995,1073741977,1073742013,1073741995,1073741977,-34,
          -2147483648,52,190,191,190,191,190,191,190,191,190,191,190,191,190,191,190,191,190,191,190,189,190,191,
          190,191,190,191,189,190,1073742014,1073741996,1073741978,1073742014,1073741996,1073741978,1073742014,
          1073741996,1073741978,1073742014,1073741996,1073741978,1073742014,1073741996,1073741978,1073742014,1073741996,
          1073741978,1073742014,1073741996,1073741978,1073742014,1073741996,1073741978,-31,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"ts_powerstation","path":"tilesets/ts_powerstation/ts_powerstation.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRInstanceLayer":"","%Name":"blocks","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_137D8660","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_137D8660","objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":50.0,"scaleY":3.0,"x":480.0,"y":744.0,},
        {"$GMRInstance":"v1","%Name":"inst_65E38EB2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_65E38EB2","objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":21.0,"scaleY":11.0,"x":248.0,"y":568.0,},
        {"$GMRInstance":"v1","%Name":"inst_17212E4B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_17212E4B","objectId":{"name":"obj_door","path":"objects/obj_door/obj_door.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_door","path":"objects/obj_door/obj_door.yy",},"propertyId":{"name":"target_room","path":"objects/obj_door/obj_door.yy",},"resource":{"name":"rm_arena1","path":"rooms/rm_arena1/rm_arena1.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"rm_arena1",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_door","path":"objects/obj_door/obj_door.yy",},"propertyId":{"name":"target_place","path":"objects/obj_door/obj_door.yy",},"resource":{"name":"inst_A78E52","path":"rooms/rm_arena1/rm_arena1.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"inst_A78E52",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":112.0,"y":688.0,},
        {"$GMRInstance":"v1","%Name":"inst_62DC593F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_62DC593F","objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":13.0,"x":72.0,"y":664.0,},
        {"$GMRInstance":"v1","%Name":"inst_70E0C0C6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_70E0C0C6","objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":0.9375,"x":152.0,"y":663.5,},
        {"$GMRInstance":"v1","%Name":"inst_343C7BA7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_343C7BA7","objectId":{"name":"obj_sliding_door","path":"objects/obj_sliding_door/obj_sliding_door.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_sliding_door","path":"objects/obj_sliding_door/obj_sliding_door.yy",},"propertyId":{"name":"locked","path":"objects/obj_sliding_door/obj_sliding_door.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":0.1,"x":152.0,"y":670.0,},
        {"$GMRInstance":"v1","%Name":"inst_6C45593E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6C45593E","objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":50.0,"scaleY":3.0,"x":480.0,"y":456.0,},
        {"$GMRInstance":"v1","%Name":"inst_164D00A5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_164D00A5","objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":408.0,"y":664.5,},
        {"$GMRInstance":"v1","%Name":"inst_4C1037AA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_4C1037AA","objectId":{"name":"obj_sliding_door","path":"objects/obj_sliding_door/obj_sliding_door.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":0.95,"x":408.0,"y":672.5,},
        {"$GMRInstance":"v1","%Name":"inst_B6B2A5F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_B6B2A5F","objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":11.875,"x":872.0,"y":575.0,},
        {"$GMRInstance":"v1","%Name":"inst_697D4D53","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_697D4D53","objectId":{"name":"obj_sliding_door","path":"objects/obj_sliding_door/obj_sliding_door.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":872.0,"y":670.0,},
      ],"layers":[],"name":"blocks","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"Tiles_2","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tiles_2","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":48,"SerialiseWidth":86,"TileCompressedData":[
          -2520,-2147483648,10,221,222,221,222,221,222,221,222,221,222,-76,-2147483648,28,241,242,241,242,241,
          242,241,242,241,242,1879048516,1879048536,221,222,221,222,221,222,221,222,221,222,221,221,233,216,217,
          218,-58,-2147483648,25,325,326,261,262,261,262,261,283,284,262,1879048515,1879048535,241,242,1879048518,
          1879048538,241,242,241,283,284,242,325,326,253,-3,255,-58,-2147483648,28,345,346,221,222,289,290,221,
          303,304,222,212,212,261,262,1879048517,1879048537,222,221,222,303,304,221,345,346,354,1073742096,1073742076,
          1073742056,-58,-2147483648,28,241,242,323,324,309,310,241,242,241,242,212,212,261,262,212,241,242,241,
          242,241,242,241,242,241,242,805306672,805306671,262,-58,-2147483648,28,261,262,343,344,329,330,326,262,
          261,262,212,283,284,212,221,261,273,261,262,261,289,290,262,261,262,805306652,805306651,262,-58,-2147483648,
          28,221,222,221,222,221,345,346,309,310,222,212,303,304,221,222,221,293,221,211,212,309,310,241,242,241,
          242,241,242,-58,-2147483648,28,241,283,284,242,241,242,241,329,330,242,212,213,214,1073742077,1879048444,
          1879048464,1879048484,1879048504,231,232,329,330,261,262,261,262,261,262,-58,-2147483648,28,261,303,
          304,262,261,262,261,262,261,262,212,233,234,1879048443,1879048443,1879048463,1879048483,1879048503,251,
          252,349,350,221,325,241,242,221,222,-58,-2147483648,13,221,222,221,222,221,222,221,222,261,262,1879048482,
          253,254,-5,255,10,271,272,241,242,241,242,261,262,241,242,-58,-2147483648,13,321,232,241,1879048465,
          1879048485,242,241,242,1073742167,1073742147,1879048481,273,274,-5,275,10,291,292,261,262,261,1879048465,
          1879048485,222,261,262,-58,-2147483648,13,257,292,261,262,1879048518,1879048538,261,262,1073742168,1073742148,
          261,293,294,-5,295,10,311,312,222,221,222,221,222,242,1073742167,1073742147,-58,-2147483648,28,277,252,
          241,242,1879048517,1879048537,261,262,221,222,221,313,1073742155,1073742135,1879048446,1879048466,1879048486,
          1879048506,331,332,242,241,283,284,242,262,1073742168,1073742148,-58,-2147483648,29,311,312,261,262,
          221,222,221,222,241,242,241,333,1073742156,1073742136,1879048445,1879048465,1879048485,1879048505,351,
          352,1879048542,261,303,304,1879048538,222,222,221,222,-57,-2147483648,29,331,332,323,324,241,242,805306672,
          805306671,261,262,261,353,354,1879048517,1879048537,222,221,1879048481,1879048501,1879048521,1879048541,
          222,221,1879048517,1879048537,242,242,241,242,-57,-2147483648,29,221,222,343,344,261,262,805306652,805306651,
          261,262,261,262,241,242,241,242,241,242,241,242,241,242,241,242,261,262,262,261,262,-57,-2147483648,
          2,241,242,-10,-2147483648,12,261,262,261,262,261,262,261,262,261,262,261,262,-62,-2147483648,2,261,262,
          -144,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"ts_exclusion_zone","path":"tilesets/ts_exclusion_zone/ts_exclusion_zone.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRTileLayer":"","%Name":"Tiles_1_1","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tiles_1_1","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":48,"SerialiseWidth":86,"TileCompressedData":[
          -1852,-2147483648,-9,18,-77,-2147483648,-9,36,-77,-2147483648,-9,54,-77,-2147483648,-9,72,-36,-2147483648,
          -10,145,-27,-2147483648,-4,148,-9,90,-40,-2147483648,-6,145,-25,-2147483648,-4,148,-2,-2147483648,-9,
          108,-36,-2147483648,21,1073742032,1073742014,1073741996,1073741978,190,191,192,1073742032,1073742014,
          1073741996,1073741978,1073742032,1073742014,1073741996,1073741978,1073742032,1073742014,1073741996,1073741978,
          1073742032,1073742014,-20,18,-9,126,-36,-2147483648,21,1073742033,1073742015,1073741997,1073741979,208,
          209,210,1073742033,1073742015,1073741997,1073741979,1073742033,1073742015,1073741997,1073741979,1073742033,
          1073742015,1073741997,1073741979,1073742033,1073742015,-20,36,-9,144,-36,-2147483648,21,1073742034,1073742016,
          1073741998,1073741980,154,155,154,1073742034,1073742016,1073741998,1073741980,1073742034,1073742016,
          1073741998,1073741980,172,173,172,173,174,22,-20,54,-9,162,-36,-2147483648,21,1073742032,1073742014,
          1073741996,1073741978,172,173,172,173,174,172,173,174,172,173,154,155,156,190,191,192,24,-20,72,-9,180,
          -36,-2147483648,21,1073742033,1073742015,1073741997,1073741979,190,191,190,191,192,190,191,192,190,191,
          172,173,174,208,209,210,42,-20,90,-9,198,-36,-2147483648,21,1073742034,1073742016,1073741998,1073741980,
          208,209,208,209,210,208,209,210,208,209,190,191,192,58,75,76,60,-20,108,-9,216,-36,-2147483648,21,1073742032,
          1073742014,1073741996,1073741978,154,155,156,154,155,156,154,155,156,155,208,209,210,154,155,156,78,
          -20,126,-9,234,-36,-2147483648,21,1073742033,1073742015,1073741997,1073741979,172,173,174,172,173,174,
          172,173,174,173,174,155,156,172,173,174,24,-20,144,-9,252,-34,-2147483648,23,154,155,1073742034,1073742016,
          1073741998,1073741980,190,191,192,190,191,192,190,191,192,191,192,173,174,190,191,192,42,-10,162,-10,
          18,-4,270,1,18,-4,270,-34,-2147483648,23,172,173,1073742032,1073742014,1073741996,1073741978,208,209,
          210,208,209,210,208,209,210,154,155,156,192,154,155,156,60,-10,180,-11,36,-3,18,1,36,-4,18,-34,-2147483648,
          23,190,191,1073742032,1073742014,1073741996,1073741978,154,155,156,154,155,156,154,155,156,154,154,155,
          156,154,155,156,24,-10,198,-11,54,-3,36,1,54,-4,36,-34,-2147483648,23,154,155,1073742032,1073742014,
          1073741996,1073741978,172,173,174,172,173,174,172,173,174,172,172,173,174,172,173,174,42,-10,216,-11,
          72,-3,54,1,72,-4,54,-34,-2147483648,23,172,173,1073742033,1073742015,1073741997,1073741979,190,191,192,
          190,191,192,190,191,192,190,190,191,192,190,191,192,60,-10,234,-11,90,-3,72,1,90,-4,72,1,145,-33,-2147483648,
          23,190,191,1073741902,1073741884,1073741902,1073741884,1073741866,1073741848,1073741902,1073741884,1073741866,
          1073741848,1073741902,1073741884,1073741866,1073741902,1073741884,1073741866,1073741848,1073741884,1073741866,
          1073741848,122,-10,252,-11,108,-3,90,1,108,-3,90,1,227,-34,-2147483648,2,23,24,-3,-2147483648,18,219,
          220,221,222,223,224,225,226,227,228,229,230,231,232,230,231,232,-2147483648,-10,270,-11,126,-3,108,1,
          126,-3,108,1,245,-34,-2147483648,2,41,42,-3,-2147483648,18,237,238,239,240,241,242,243,244,245,246,247,
          248,249,250,248,249,250,-2147483648,-10,18,-11,144,-3,126,1,144,-3,126,1,263,-34,-2147483648,2,59,60,
          -3,-2147483648,18,255,256,257,258,259,260,261,262,263,264,265,266,267,268,266,267,268,-2147483648,-10,
          36,-11,162,-3,144,1,162,-3,144,1,245,-34,-2147483648,2,77,78,-3,-2147483648,18,273,274,275,276,277,278,
          279,280,281,282,283,284,285,286,284,285,286,-2147483648,-10,54,-11,180,-3,162,1,180,-3,162,1,263,-34,
          -2147483648,23,154,155,1879048216,1879048234,1879048252,1879048270,1879048216,1879048234,1879048252,
          1879048270,1879048216,1879048234,1879048252,1879048270,1879048234,1879048252,1879048270,1879048216,1879048234,
          1879048252,1879048270,1879048216,1879048234,-10,72,-11,198,-3,180,1,198,-4,180,-34,-2147483648,23,172,
          173,172,173,172,173,172,173,172,173,172,173,172,173,172,173,172,173,172,171,172,173,172,-10,90,-11,216,
          -3,198,1,216,-4,198,-34,-2147483648,23,190,191,190,191,190,191,190,191,190,191,190,191,190,191,190,191,
          190,191,190,189,190,191,190,-10,108,-11,234,-3,216,1,234,-4,216,-31,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"ts_powerstation","path":"tilesets/ts_powerstation/ts_powerstation.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Background_1_1_1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background_1_1_1","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_power_station_5","path":"sprites/spr_power_station_5/spr_power_station_5.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":416,"y":400,},
    {"$GMRBackgroundLayer":"","%Name":"Background_1_1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background_1_1","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_power_station_3","path":"sprites/spr_power_station_3/spr_power_station_3.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":373,"y":432,},
    {"$GMRBackgroundLayer":"","%Name":"Background_1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background_1","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_power_station_2","path":"sprites/spr_power_station_2/spr_power_station_2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":150,"y":432,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_power_station_1","path":"sprites/spr_power_station_1/spr_power_station_1.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":400,"y":432,},
  ],
  "name":"rm_boss",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":768,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":1366,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":true,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}