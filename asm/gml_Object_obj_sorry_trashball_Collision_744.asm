.localvar 0 arguments

:[0]
push.v self.deactivate
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i scr_damagestandard_x(argc=0)
popz.v

:[end]