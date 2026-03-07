.localvar 0 arguments

:[0]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 16
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.j

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 18
cmp.i.v LT
bf [18]

:[4]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 400
conv.i.v
pushi.e -20
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
add.v.i
pushi.e 0
conv.i.v
call.i c_borderheight(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blt

:[6]
push.v self.green
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 400
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderheight(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blt

:[8]
push.v self.blt
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v self.i
push.d 0.2
mul.d.v
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.i
pushi.e 20
mul.i.v
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.dmg
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.dmg

:[10]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [17]

:[11]
push.v self.i
push.v self.j
cmp.v.v EQ
bt [13]

:[12]
push.v self.i
push.v self.j
pushi.e 1
add.i.v
cmp.v.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [17]

:[15]
pushi.e 1
push.v self.blt
conv.v.i
pop.v.i [stacktop]self.green
push.v self.blt
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 505
push.v self.blt
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[17]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[18]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [23]

:[19]
pushi.e 0
pop.v.i 400.s2factor
pushi.e 6
pop.v.i 400.sineradd
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [21]

:[20]
pushi.e 4
pop.v.i 400.sineradd

:[21]
push.v self.sum
pushi.e 2
cmp.i.v GT
bf [23]

:[22]
pushi.e 3
pop.v.i 400.sineradd
push.v 400.sinerfactor
pushi.e 2
add.i.v
pop.v.v 400.sinerfactor

:[23]
push.v self.green
pushi.e 0
cmp.i.v EQ
bf [end]

:[24]
push.v 400.sinerfactor
pushi.e 8
add.i.v
pop.v.v 400.sinerfactor
call.i scr_monstersum(argc=0)
pop.v.v self.sum
pushi.e 381
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
push.v self.sum
pushi.e 3
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.v 400.y
pushi.e 15
add.i.v
pop.v.v 400.y
push.v 400.sinerfactor
pushi.e 8
sub.i.v
pop.v.v 400.sinerfactor

:[29]
push.v self.sum
pushi.e 2
cmp.i.v GT
bf [end]

:[30]
push.v 400.sinerfactor
pushi.e 8
add.i.v
pop.v.v 400.sinerfactor

:[end]