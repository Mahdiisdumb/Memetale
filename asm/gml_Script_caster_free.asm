.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e -3
cmp.i.v NEQ
bf [2]

:[1]
pushbltn.v self.argument0
call.i audio_stop_sound(argc=1)
popz.v
b [end]

:[2]
call.i audio_stop_all(argc=0)
popz.v

:[end]