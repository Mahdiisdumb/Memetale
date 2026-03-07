.localvar 0 arguments

:[0]
push.v self.part
pushi.e 0
cmp.i.v GT
bf [3]

:[1]
push.v self.part
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
push.v self.deactivate
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
call.i scr_damagestandard_x(argc=0)
popz.v

:[end]