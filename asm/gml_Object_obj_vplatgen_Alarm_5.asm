.localvar 0 arguments

:[0]
pushi.e 70
conv.i.v
pushi.e 90
conv.i.v
pushi.e 3
conv.i.v
pushi.e 20
conv.i.v
call.i scr_bwall(argc=4)
popz.v
push.v self.type
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 70
conv.i.v
pushi.e 90
conv.i.v
pushi.e -3
conv.i.v
pushi.e 340
conv.i.v
call.i scr_bwall(argc=4)
popz.v

:[end]