.localvar 0 arguments
.localvar 1 handle 832

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i file_text_write_real(argc=2)
ret.v

:[2]
b [end]

:[3]
pushbltn.v self.argument0
pop.v.v local.handle
push.s "data"@6219
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pushbltn.v self.argument1
call.i string(argc=1)
add.v.v
push.s "data"@6219
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v

:[end]