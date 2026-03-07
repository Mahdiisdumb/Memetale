.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [10]

:[1]
pushi.e 409
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.bodyopen

:[3]
popenv [2]
pushglb.v global.attacktype
pushi.e 48
cmp.i.v EQ
bf [7]

:[4]
pushi.e 409
pushenv [6]

:[5]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]

:[7]
pushi.e -1
pop.v.i global.turntimer
push.v self.last
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
pop.v.i global.mnfight

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.specialtimer
pushi.e 1
cmp.i.v EQ
bf [16]

:[11]
pushi.e 432
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushglb.v global.turntimer
pushi.e 9
cmp.i.v GT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 9
pop.v.i global.turntimer

:[16]
push.v self.specialtimer
pushi.e 2
cmp.i.v EQ
bf [end]

:[17]
pushi.e 446
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushglb.v global.turntimer
pushi.e 9
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [end]

:[21]
pushi.e 9
pop.v.i global.turntimer

:[end]