.localvar 0 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [end]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i scr_damagestandard(argc=5)
popz.v

:[end]