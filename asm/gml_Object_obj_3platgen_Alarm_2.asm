.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.zone
push.v 744.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
cmp.v.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.zone

:[2]
push.v 744.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
add.i.v
cmp.v.v GTE
bf [4]

:[3]
pushi.e 2
pop.v.i self.zone

:[4]
pushi.e 0
pop.v.i self.reroll
push.v self.gg
pop.v.v self.gg2
push.v self.g
pop.v.v self.gg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.g
push.v self.gg
push.v self.g
cmp.v.v EQ
bf [7]

:[5]
push.v self.gg2
push.v self.gg
cmp.v.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.reroll

:[7]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [10]

:[8]
push.v self.zone
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.reroll

:[10]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
push.v self.zone
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.reroll

:[13]
push.v self.reroll
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.g

:[15]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e -4
conv.i.v
pushi.e 35
conv.i.v
call.i scr_sbo(argc=4)
popz.v

:[17]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 2
conv.i.v
pushi.e 50
conv.i.v
pushi.e -4
conv.i.v
pushi.e 90
conv.i.v
call.i scr_sbo(argc=4)
popz.v

:[19]
push.v self.g
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 4
conv.i.v
pushi.e 80
conv.i.v
call.i scr_bwall(argc=4)
popz.v
push.d 0.8
push.v self.bone
conv.v.i
pop.v.d [stacktop]self.image_yscale

:[21]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[23]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[24]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]