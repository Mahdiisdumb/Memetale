.localvar 0 arguments

:[0]
pushglb.v global.armor
pushi.e 48
cmp.i.v EQ
bf [2]

:[1]
push.v global.wstrength
pushi.e 5
sub.i.v
pop.v.v global.wstrength

:[2]
pushglb.v global.armor
pushi.e 64
cmp.i.v EQ
bf [4]

:[3]
push.v global.wstrength
pushi.e 10
sub.i.v
pop.v.v global.wstrength

:[4]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
pushglb.v global.armor
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.v [array]global.item

:[6]
pushbltn.v self.argument1
pop.v.v global.armor
pushglb.v global.armor
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i global.adef

:[8]
pushglb.v global.armor
pushi.e 12
cmp.i.v EQ
bf [10]

:[9]
pushi.e 3
pop.v.i global.adef

:[10]
pushglb.v global.armor
pushi.e 15
cmp.i.v EQ
bf [12]

:[11]
pushi.e 7
pop.v.i global.adef

:[12]
pushglb.v global.armor
pushi.e 24
cmp.i.v EQ
bf [14]

:[13]
pushi.e 10
pop.v.i global.adef

:[14]
pushglb.v global.armor
pushi.e 44
cmp.i.v EQ
bf [16]

:[15]
pushi.e 5
pop.v.i global.adef

:[16]
pushglb.v global.armor
pushi.e 46
cmp.i.v EQ
bf [18]

:[17]
pushi.e 11
pop.v.i global.adef

:[18]
pushglb.v global.armor
pushi.e 48
cmp.i.v EQ
bf [20]

:[19]
pushi.e 12
pop.v.i global.adef
push.v global.wstrength
pushi.e 5
add.i.v
pop.v.v global.wstrength

:[20]
pushglb.v global.armor
pushi.e 50
cmp.i.v EQ
bf [22]

:[21]
pushi.e 15
pop.v.i global.adef

:[22]
pushglb.v global.armor
pushi.e 53
cmp.i.v EQ
bf [24]

:[23]
pushi.e 99
pop.v.i global.adef

:[24]
pushglb.v global.armor
pushi.e 64
cmp.i.v EQ
bf [26]

:[25]
pushi.e 20
pop.v.i global.adef
push.v global.wstrength
pushi.e 10
add.i.v
pop.v.v global.wstrength

:[26]
pushi.e 79
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 86
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]