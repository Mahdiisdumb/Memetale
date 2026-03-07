.localvar 0 arguments
.localvar 1 type 9610
.localvar 2 json 9611

:[0]
push.s "id"@48271
conv.s.v
pushbltn.v self.async_load
call.i ds_map_find_value(argc=2)
pushglb.v global.savedata_async_id
cmp.v.v EQ
bf [end]

:[1]
pushi.e -1
pop.v.i global.savedata_async_id
pushglb.v global.savedata_async_load
conv.v.b
bf [3]

:[2]
push.s "load"@51241
pop.v.s local.type
b [4]

:[3]
push.s "save"@50375
pop.v.s local.type

:[4]
push.s "status"@48801
conv.s.v
pushbltn.v self.async_load
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v LT
bf [8]

:[5]
pushi.e 1
pop.v.i global.savedata_error
pushloc.v local.type
push.s " failed: "@51242
add.s.v
push.s "status"@48801
conv.s.v
pushbltn.v self.async_load
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
add.v.v
pop.v.v global.savedata_debuginfo
pushglb.v global.savedata_async_load
conv.v.b
bf [7]

:[6]
call.i ds_map_create(argc=0)
pop.v.v global.savedata

:[7]
b [10]

:[8]
pushi.e 0
pop.v.i global.savedata_error
pushloc.v local.type
push.s " succeeded"@51243
add.s.v
pop.v.v global.savedata_debuginfo
pushglb.v global.savedata_async_load
conv.v.b
bf [10]

:[9]
pushi.e 11
conv.i.v
pushglb.v global.savedata_buffer
call.i buffer_read(argc=2)
pop.v.v local.json
pushloc.v local.json
call.i json_decode(argc=1)
pop.v.v global.savedata

:[10]
pushglb.v global.savedata_buffer
call.i buffer_delete(argc=1)
popz.v
pushbltn.v self.undefined
pop.v.v global.savedata_buffer

:[end]