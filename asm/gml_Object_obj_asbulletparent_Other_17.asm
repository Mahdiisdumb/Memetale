.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [17]

:[1]
pushi.e 10
pop.v.i self.dmg
pushglb.v global.hope
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 7
pop.v.i self.dmg

:[3]
pushglb.v global.hp
pop.v.v self.thishp
pushglb.v global.invc
pop.v.v self.thisinvc
call.i scr_damagestandard_x(argc=0)
popz.v
pushglb.v global.invc
push.v self.thisinvc
cmp.v.v GT
bf [14]

:[4]
pushglb.v global.hp
push.v self.thishp
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [6]

:[5]
push.v self.thishp
pushi.e 3
sub.i.v
pop.v.v global.hp

:[6]
pushglb.v global.hope
pushi.e 1
cmp.i.v EQ
bf [12]

:[7]
push.v self.thishp
pushi.e 1
cmp.i.v GT
bf [9]

:[8]
pushglb.v global.hp
pushi.e 1
cmp.i.v LTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i global.hp

:[12]
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [14]

:[13]
pushi.e 0
pop.v.i global.hp

:[14]
pushglb.v global.hope
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i global.hp

:[16]
b [end]

:[17]
pushglb.v global.hp
pushi.e 14
cmp.i.v GTE
bf [19]

:[18]
pushi.e 9
pop.v.i self.dmg

:[19]
pushglb.v global.hp
pushi.e 14
cmp.i.v LTE
bf [21]

:[20]
pushi.e 7
pop.v.i self.dmg

:[21]
pushglb.v global.hp
pushi.e 9
cmp.i.v LTE
bf [23]

:[22]
pushi.e 6
pop.v.i self.dmg

:[23]
pushglb.v global.hp
pushi.e 5
cmp.i.v LTE
bf [25]

:[24]
pushi.e 1
pop.v.i self.dmg

:[25]
call.i scr_damagestandard_x(argc=0)
popz.v
pushglb.v global.hp
pushi.e 1
cmp.i.v LT
bf [end]

:[26]
pushi.e 1
pop.v.i global.hp

:[end]