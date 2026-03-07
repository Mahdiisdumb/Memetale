.localvar 0 arguments
.localvar 1 handle 820

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
pushbltn.v self.argument0
call.i file_text_open_write(argc=1)
ret.v

:[2]
b [end]

:[3]
call.i ds_map_create(argc=0)
pop.v.v local.handle
pushi.e 1
conv.i.v
push.s "is_write"@6218
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v
pushbltn.v self.argument0
call.i string_lower(argc=1)
push.s "filename"@6220
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v
push.s ""@36
conv.s.v
push.s "data"@6219
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.handle
ret.v

:[end]