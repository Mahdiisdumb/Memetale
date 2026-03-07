.localvar 0 arguments

:[0]
pushi.e 1198
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1198.fakev
pushi.e -1
cmp.i.v GT
bf [3]

:[2]
push.v 1198.fakev
pushi.e 6
sub.i.v
pop.v.v 1198.fakev

:[3]
push.v 1198.fakev
pushi.e -1
cmp.i.v LT
bf [5]

:[4]
pushi.e -1
pop.v.i 1198.fakev

:[5]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[6]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[end]