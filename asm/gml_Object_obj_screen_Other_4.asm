.localvar 0 arguments

:[0]
push.s "MEMETALE"@47783
conv.s.v
call.i window_set_caption(argc=1)
popz.v
pushbltn.v self.room
pushi.e 179
cmp.i.v EQ
bf [end]

:[1]
push.s "MEMETALE the Musical"@47784
conv.s.v
call.i window_set_caption(argc=1)
popz.v

:[end]