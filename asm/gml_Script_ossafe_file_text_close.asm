.localvar 0 arguments
.localvar 1 handle 805

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
pushbltn.v self.argument0
call.i file_text_close(argc=1)
ret.v

:[2]
b [end]

:[3]
pushbltn.v self.argument0
pop.v.v local.handle
push.s "is_write"@6218
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
conv.v.b
bf [5]

:[4]
push.s "data"@6219
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
push.s "filename"@6220
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pushglb.v global.savedata
call.i ds_map_set(argc=3)
popz.v

:[5]
pushloc.v local.handle
call.i ds_map_destroy(argc=1)
popz.v

:[end]