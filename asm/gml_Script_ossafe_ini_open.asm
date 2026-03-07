.localvar 0 arguments
.localvar 1 name 847
.localvar 2 file 848
.localvar 3 data 849

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [2]

:[1]
pushbltn.v self.argument0
call.i ini_open(argc=1)
popz.v
b [end]

:[2]
pushbltn.v self.argument0
call.i string_lower(argc=1)
pop.v.v local.name
pushloc.v local.name
pop.v.v global.current_ini
pushloc.v local.name
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
pop.v.v local.file
pushloc.v local.file
call.i is_undefined(argc=1)
conv.v.b
bf [4]

:[3]
push.s ""@36
pop.v.s local.data
b [5]

:[4]
pushloc.v local.file
pop.v.v local.data

:[5]
pushloc.v local.data
call.i ini_open_from_string(argc=1)
popz.v

:[end]