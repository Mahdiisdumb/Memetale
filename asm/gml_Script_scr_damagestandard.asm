.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 3
cmp.i.v NEQ
bf [13]

:[1]
pushi.e 1
pop.v.i self.check
pushbltn.v self.argument0
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e 0
pop.v.i self.check
push.v 744.xprevious
push.v 744.x
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
bt [4]

:[3]
push.v 744.yprevious
push.v 744.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.check

:[7]
pushbltn.v self.argument0
pushi.e 2
cmp.i.v EQ
bf [13]

:[8]
pushi.e 0
pop.v.i self.check
push.v 744.xprevious
push.v 744.x
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v LT
bf [10]

:[9]
push.v 744.yprevious
push.v 744.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.check

:[13]
push.v self.dmg
pop.v.v self.puredmg
pushglb.v global.hp
pushi.e 20
cmp.i.v GT
bf [15]

:[14]
push.v self.dmg
pushi.e 1
add.i.v
pop.v.v self.dmg

:[15]
pushglb.v global.hp
pushi.e 30
cmp.i.v GTE
bf [17]

:[16]
push.v self.dmg
pushi.e 1
add.i.v
pop.v.v self.dmg

:[17]
pushglb.v global.hp
pushi.e 40
cmp.i.v GTE
bf [19]

:[18]
push.v self.dmg
pushi.e 1
add.i.v
pop.v.v self.dmg

:[19]
pushglb.v global.hp
pushi.e 50
cmp.i.v GTE
bf [21]

:[20]
push.v self.dmg
pushi.e 1
add.i.v
pop.v.v self.dmg

:[21]
pushglb.v global.hp
pushi.e 60
cmp.i.v GTE
bf [23]

:[22]
push.v self.dmg
pushi.e 1
add.i.v
pop.v.v self.dmg

:[23]
pushglb.v global.hp
pushi.e 70
cmp.i.v GTE
bf [25]

:[24]
push.v self.dmg
pushi.e 1
add.i.v
pop.v.v self.dmg

:[25]
pushglb.v global.hp
pushi.e 80
cmp.i.v GTE
bf [27]

:[26]
push.v self.dmg
pushi.e 1
add.i.v
pop.v.v self.dmg

:[27]
pushglb.v global.hp
pushi.e 90
cmp.i.v GTE
bf [29]

:[28]
push.v self.dmg
pushi.e 1
add.i.v
pop.v.v self.dmg

:[29]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
bf [31]

:[30]
push.v self.check
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [51]

:[33]
push.v self.dmg
pushglb.v global.df
pushglb.v global.adef
add.v.v
pushi.e 5
conv.i.d
div.d.v
sub.v.v
call.i round(argc=1)
pop.v.v self.dmgamt
push.v self.dmgamt
pushbltn.v self.argument1
cmp.v.v LT
bf [35]

:[34]
pushbltn.v self.argument1
pop.v.v self.dmgamt

:[35]
pushbltn.v self.argument2
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.v self.dmgamt
pushbltn.v self.argument2
cmp.v.v GT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushbltn.v self.argument2
pop.v.v self.dmgamt

:[40]
pushbltn.v self.argument3
pushi.e 0
cmp.i.v GT
bf [42]

:[41]
pushbltn.v self.argument3
pop.v.v self.dmgamt

:[42]
push.v self.dmgamt
pushi.e 1
cmp.i.v LT
bf [44]

:[43]
pushi.e 1
pop.v.i self.dmgamt

:[44]
push.v global.hp
push.v self.dmgamt
sub.v.v
pop.v.v global.hp
pushglb.v global.hp
pushi.e 0
cmp.i.v LT
bf [46]

:[45]
pushi.e 0
pop.v.i global.hp

:[46]
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i global.hshake
pushi.e 2
pop.v.i global.shakespeed
pushi.e 2
pop.v.i global.vshake
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.inv
pop.v.v global.invc
pushbltn.v self.argument4
pushi.e 0
cmp.i.v GT
bf [48]

:[47]
pushbltn.v self.argument4
pushi.e 20
conv.i.d
div.d.v
pushglb.v global.inv
mul.v.v
pop.v.v global.invc

:[48]
pushglb.v global.battlegroup
pushi.e 22
cmp.i.v EQ
bf [51]

:[49]
pushglb.v global.hp
pushi.e 1
cmp.i.v LT
bf [51]

:[50]
pushi.e 750
pop.v.i 212.sprite_index

:[51]
push.v self.puredmg
pop.v.v self.dmg

:[end]