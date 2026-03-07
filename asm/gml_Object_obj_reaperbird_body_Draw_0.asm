.localvar 0 arguments

:[0]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.bodycounter
pushi.e 1
add.i.v
pop.v.v self.bodycounter
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.counter
pushi.e 60
cmp.i.v GT
bf [2]

:[1]
push.v self.counter
pushi.e 80
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v self.head_index
push.d 0.5
add.d.v
pop.v.v self.head_index
push.v self.head_index
pushi.e 6
cmp.i.v GTE
bf [6]

:[5]
pushi.e 100
pop.v.i self.counter

:[6]
push.v self.counter
pushi.e 130
cmp.i.v GT
bf [8]

:[7]
push.v self.counter
pushi.e 160
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
push.v self.head_index
push.d 0.5
sub.d.v
pop.v.v self.head_index
push.v self.head_index
pushi.e 1
cmp.i.v LT
bf [12]

:[11]
pushi.e 0
pop.v.i self.head_index
pushi.e 160
pop.v.i self.counter

:[12]
push.v self.counter
pushi.e 200
cmp.i.v GT
bf [14]

:[13]
push.v self.counter
pushi.e 210
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 0
pop.v.i self.head_index
pushi.e 736
pop.v.i self.headsprite
pushi.e 210
pop.v.i self.counter

:[17]
push.v self.counter
pushi.e 210
cmp.i.v GT
bf [20]

:[18]
push.v self.head_index
push.d 0.5
add.d.v
pop.v.v self.head_index
push.v self.head_index
pushi.e 14
cmp.i.v GT
bf [20]

:[19]
pushi.e 0
pop.v.i self.head_index
pushi.e -30
pop.v.i self.counter
pushi.e 737
pop.v.i self.headsprite

:[20]
push.v self.bodycounter
pushi.e 150
cmp.i.v GT
bf [23]

:[21]
push.v self.torso_index
push.d 0.2
add.d.v
pop.v.v self.torso_index
push.v self.torso_index
pushi.e 7
cmp.i.v GT
bf [23]

:[22]
pushi.e 0
pop.v.i self.bodycounter
pushi.e 0
pop.v.i self.torso_index

:[23]
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
pop.v.v self.sx
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
call.i abs(argc=1)
pop.v.v self.sy
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.ystretch
pushi.e 2
conv.i.v
push.v self.y
pushi.e 90
add.i.v
push.v self.sy
add.v.v
push.v self.mstretch
pushi.e 20
mul.i.v
sub.v.v
push.v self.x
pushi.e 14
add.i.v
push.v self.sx
add.v.v
push.v self.torso_index
call.i floor(argc=1)
pushi.e 735
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.stretchup
pushi.e 2
cmp.i.v EQ
bf [30]

:[24]
push.v self.ystretch
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
push.v self.ystretch
push.d 0.1
sub.d.v
pop.v.v self.ystretch
b [27]

:[26]
pushi.e 0
pop.v.i self.ystretch

:[27]
push.v self.mstretch
pushi.e 2
cmp.i.v LT
bf [29]

:[28]
push.v self.mstretch
push.d 0.05
add.d.v
pop.v.v self.mstretch
b [30]

:[29]
pushi.e 2
pop.v.i self.mstretch

:[30]
push.v self.stretchup
pushi.e 1
cmp.i.v EQ
bf [34]

:[31]
push.v self.ystretch
pushi.e 2
cmp.i.v GT
bf [33]

:[32]
push.v self.ystretch
push.d 0.2
sub.d.v
pop.v.v self.ystretch
b [34]

:[33]
pushi.e 2
pop.v.i self.ystretch

:[34]
push.v self.stretchup
pushi.e 0
cmp.i.v EQ
bf [38]

:[35]
push.v self.ystretch
pushi.e 4
cmp.i.v LT
bf [37]

:[36]
push.v self.ystretch
push.d 0.2
add.d.v
pop.v.v self.ystretch
b [38]

:[37]
pushi.e 4
pop.v.i self.ystretch

:[38]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.mstretch
sub.v.i
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.head_index
call.i floor(argc=1)
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]