.localvar 0 arguments

:[0]
pushglb.v global.weapon
pushi.e 14
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.inbattle
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 78
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 8
pushglb.v global.lv
pushi.e 2
mul.i.v
add.v.i
pop.v.v global.at

:[6]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
pushglb.v global.weapon
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.v [array]global.item

:[8]
pushbltn.v self.argument1
pop.v.v global.weapon
pushglb.v global.weapon
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i global.wstrength

:[10]
pushglb.v global.weapon
pushi.e 13
cmp.i.v EQ
bf [12]

:[11]
pushi.e 3
pop.v.i global.wstrength

:[12]
pushglb.v global.weapon
pushi.e 14
cmp.i.v EQ
bf [14]

:[13]
pushi.e 5
pop.v.i global.wstrength

:[14]
pushglb.v global.weapon
pushi.e 25
cmp.i.v EQ
bf [16]

:[15]
pushi.e 7
pop.v.i global.wstrength

:[16]
pushglb.v global.weapon
pushi.e 45
cmp.i.v EQ
bf [18]

:[17]
pushi.e 2
pop.v.i global.wstrength

:[18]
pushglb.v global.weapon
pushi.e 47
cmp.i.v EQ
bf [20]

:[19]
pushi.e 10
pop.v.i global.wstrength

:[20]
pushglb.v global.weapon
pushi.e 49
cmp.i.v EQ
bf [22]

:[21]
pushi.e 12
pop.v.i global.wstrength

:[22]
pushglb.v global.weapon
pushi.e 51
cmp.i.v EQ
bf [24]

:[23]
pushi.e 15
pop.v.i global.wstrength

:[24]
pushglb.v global.weapon
pushi.e 52
cmp.i.v EQ
bf [26]

:[25]
pushi.e 99
pop.v.i global.wstrength

:[26]
pushglb.v global.armor
pushi.e 48
cmp.i.v EQ
bf [28]

:[27]
push.v global.wstrength
pushi.e 5
add.i.v
pop.v.v global.wstrength

:[28]
pushglb.v global.armor
pushi.e 64
cmp.i.v EQ
bf [30]

:[29]
push.v global.wstrength
pushi.e 10
add.i.v
pop.v.v global.wstrength

:[30]
pushi.e 79
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 86
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]