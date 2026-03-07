.localvar 0 arguments

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
pushbltn.v self.argument0
call.i file_delete(argc=1)
ret.v

:[2]
b [end]

:[3]
pushbltn.v self.argument0
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [end]

:[4]
pushbltn.v self.argument0
pushglb.v global.savedata
call.i ds_map_delete(argc=2)
popz.v

:[end]