.localvar 0 arguments

:[0]
pushbltn.v self.argument0
call.i audio_is_playing(argc=1)
conv.v.b
bf [3]

:[1]
pushi.e 1
conv.i.v
ret.v

:[2]
b [end]

:[3]
pushi.e 0
conv.i.v
ret.v

:[end]