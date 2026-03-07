.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.95
cmp.d.v GTE
bf [end]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_damagestandard(argc=5)
popz.v

:[end]