.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.9
cmp.d.v GTE
bf [end]

:[1]
call.i scr_damagestandard_x(argc=0)
popz.v

:[end]