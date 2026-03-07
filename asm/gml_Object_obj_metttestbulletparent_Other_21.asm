.localvar 0 arguments

:[0]
pushglb.v global.invc
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
pushi.e 9
pop.v.i self.dmg
pushi.e 421
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [18]

:[2]
pushglb.v global.attacktype
pushi.e 37
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.specialdam
pushi.e 1
add.i.v
pop.i.v [array]global.specialdam

:[4]
pushglb.v global.attacktype
pushi.e 39
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.specialdam
pushi.e 1
add.i.v
pop.i.v [array]global.specialdam

:[6]
pushglb.v global.attacktype
pushi.e 43
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.specialdam
pushi.e 1
add.i.v
pop.i.v [array]global.specialdam

:[8]
pushglb.v global.hp
pushi.e 30
cmp.i.v GTE
bf [10]

:[9]
pushi.e 10
pop.v.i self.dmg
b [15]

:[10]
pushglb.v global.hp
pushi.e 20
cmp.i.v GTE
bf [12]

:[11]
pushi.e 9
pop.v.i self.dmg
b [15]

:[12]
pushglb.v global.hp
pushi.e 5
cmp.i.v GTE
bf [14]

:[13]
pushi.e 8
pop.v.i self.dmg
b [15]

:[14]
pushi.e 6
pop.v.i self.dmg

:[15]
call.i scr_damagestandard_x(argc=0)
popz.v
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [17]

:[16]
pushi.e 0
pop.v.i global.hp

:[17]
b [72]

:[18]
pushi.e 0
pop.v.i self.taken
pushi.e 425
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [45]

:[19]
pushglb.v global.hp
pushi.e 24
cmp.i.v GTE
bf [21]

:[20]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.i self.taken
pushi.e 9
pop.v.i self.dmg

:[24]
pushglb.v global.hp
pushi.e 16
cmp.i.v GTE
bf [26]

:[25]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 1
pop.v.i self.taken
pushi.e 8
pop.v.i self.dmg

:[29]
pushglb.v global.hp
pushi.e 8
cmp.i.v GTE
bf [31]

:[30]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i self.taken
pushi.e 7
pop.v.i self.dmg

:[34]
pushglb.v global.hp
pushi.e 3
cmp.i.v GTE
bf [36]

:[35]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 1
pop.v.i self.taken
pushi.e 6
pop.v.i self.dmg

:[39]
pushglb.v global.hp
pushi.e 0
cmp.i.v GTE
bf [41]

:[40]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 1
pop.v.i self.taken
pushi.e 5
pop.v.i self.dmg

:[44]
b [70]

:[45]
pushglb.v global.hp
pushi.e 30
cmp.i.v GTE
bf [47]

:[46]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 1
pop.v.i self.taken
pushi.e 9
pop.v.i self.dmg

:[50]
pushglb.v global.hp
pushi.e 20
cmp.i.v GTE
bf [52]

:[51]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 1
pop.v.i self.taken
pushi.e 8
pop.v.i self.dmg

:[55]
pushglb.v global.hp
pushi.e 12
cmp.i.v GTE
bf [57]

:[56]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 1
pop.v.i self.taken
pushi.e 7
pop.v.i self.dmg

:[60]
pushglb.v global.hp
pushi.e 4
cmp.i.v GTE
bf [62]

:[61]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 1
pop.v.i self.taken
pushi.e 6
pop.v.i self.dmg

:[65]
pushglb.v global.hp
pushi.e 0
cmp.i.v GTE
bf [67]

:[66]
push.v self.taken
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 1
pop.v.i self.taken
pushi.e 5
pop.v.i self.dmg

:[70]
call.i scr_damagestandard_x(argc=0)
popz.v
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [72]

:[71]
pushi.e 0
pop.v.i global.hp

:[72]
pushi.e -5
pushglb.v global.attacktype
conv.v.i
dup.i 1
push.v [array]global.failure
pushi.e 1
add.i.v
pop.i.v [array]global.failure

:[end]