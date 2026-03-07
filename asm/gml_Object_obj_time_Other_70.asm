.localvar 0 arguments

:[0]
push.s "id"@48271
conv.s.v
pushbltn.v self.async_load
call.i ds_map_find_value(argc=2)
call.i is_undefined(argc=1)
conv.v.b
bf [2]

:[1]
exit.i

:[2]
push.s "id"@48271
conv.s.v
pushbltn.v self.async_load
call.i ds_map_find_value(argc=2)
pushi.e 103
cmp.i.v EQ
bf [end]

:[3]
call.i trophy_handle_load_state(argc=0)
popz.v

:[end]