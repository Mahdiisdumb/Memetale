.localvar 0 arguments

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[1]
call.i ini_close(argc=0)
ret.v

:[2]
b [end]

:[3]
pushglb.v global.current_ini
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [end]

:[4]
call.i ini_close(argc=0)
pushglb.v global.current_ini
pushglb.v global.savedata
call.i ds_map_set(argc=3)
popz.v
pushbltn.v self.undefined
pop.v.v global.current_ini

:[end]