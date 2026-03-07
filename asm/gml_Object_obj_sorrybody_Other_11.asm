.localvar 0 arguments

:[0]
push.v self.ch
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.v 744.x
push.v 744.xprevious
cmp.v.v EQ
bf [3]

:[2]
push.v 744.y
push.v 744.yprevious
cmp.v.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i scr_damagestandard_x(argc=0)
popz.v

:[6]
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [end]

:[7]
push.v 744.x
push.v 744.xprevious
cmp.v.v NEQ
bt [9]

:[8]
push.v 744.y
push.v 744.yprevious
cmp.v.v NEQ
b [10]

:[9]
push.e 1

:[10]
bf [end]

:[11]
call.i scr_damagestandard_x(argc=0)
popz.v

:[end]