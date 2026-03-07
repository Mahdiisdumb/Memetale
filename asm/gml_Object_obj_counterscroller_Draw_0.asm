.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [8]

:[2]
push.v self.seg
push.v self.i
add.v.v
neg.v
pop.v.v self.j
push.v self.j
pushi.e 0
cmp.i.v GT
bf [7]

:[3]
push.v self.j
push.v self.segno
cmp.v.v LT
bf [5]

:[4]
push.v self.y
pushi.e 360
sub.i.v
push.v self.fakey
add.v.v
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1806
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[5]
push.v self.j
push.v self.segno
cmp.v.v EQ
bf [7]

:[6]
push.v self.y
pushi.e 360
sub.i.v
push.v self.fakey
add.v.v
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1805
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[8]
push.v self.fakey
push.v self.fakev
add.v.v
pop.v.v self.fakey
push.v self.fakey
pushi.e 40
cmp.i.v GT
bf [11]

:[9]
push.v self.fakey
pushi.e 40
sub.i.v
pop.v.v self.fakey
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.seg
pushi.e 1
sub.i.v
pop.v.v self.seg

:[11]
push.v self.fakey
pushi.e -40
cmp.i.v LT
bf [14]

:[12]
push.v self.fakey
pushi.e 40
add.i.v
pop.v.v self.fakey
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.seg
pushi.e 1
add.i.v
pop.v.v self.seg

:[14]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v self.fakey
pushi.e 1
add.i.v
pop.v.v self.fakey
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 17
cmp.i.v GTE
bf [17]

:[16]
pushi.e 0
pop.v.i self.timer
push.d 1.5
pop.v.d self.con

:[17]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [20]

:[18]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [20]

:[19]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.con

:[20]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [23]

:[21]
push.v self.xstart
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.y
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v GT
bf [23]

:[22]
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 3
pop.v.i self.con
pushi.e -1
pop.v.i self.fakev

:[23]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [26]

:[24]
push.v self.fakev
push.d 0.25
sub.d.v
pop.v.v self.fakev
push.v self.fakev
pushi.e -15
cmp.i.v LTE
bf [26]

:[25]
pushi.e -15
pop.v.i self.fakev
pushi.e 0
pop.v.i self.on
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[26]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [29]

:[27]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 150
cmp.i.v GT
bf [29]

:[28]
pushi.e 5
pop.v.i self.con

:[29]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[30]
pushi.e 0
pop.v.i self.fakev
pushi.e 6
pop.v.i self.con

:[end]