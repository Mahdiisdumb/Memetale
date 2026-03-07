.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.dmg
call.i scr_monstersum(argc=0)
pop.v.v self.sum
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 384
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
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
pop.v.v self.fr1
pushi.e 0
push.v self.fr1
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 0
push.v self.fr1
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.fr1
conv.v.i
pop.v.i [stacktop]self.lazy
push.v self.sum
pushi.e 4
cmp.i.v EQ
bf [end]

:[1]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.no2
pushi.e 384
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
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
pop.v.v self.fr2
push.v self.no2
push.v self.fr2
conv.v.i
pop.v.v [stacktop]self.side
push.v self.no2
pushi.e -90
mul.i.v
push.v self.fr2
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.no2
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
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
push.v self.fr2
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.fr2
conv.v.i
pop.v.v [stacktop]self.y

:[3]
push.v self.no2
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.fr2
conv.v.i
pop.v.v [stacktop]self.x
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
push.v self.fr2
conv.v.i
pop.v.v [stacktop]self.y

:[5]
push.v self.no2
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
sub.i.v
push.v self.fr2
conv.v.i
pop.v.v [stacktop]self.x
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
push.v self.fr2
conv.v.i
pop.v.v [stacktop]self.y

:[7]
push.v self.no2
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.no3

:[9]
push.v self.no2
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.no3

:[11]
push.v self.no2
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.no3

:[13]
push.v self.no2
pushi.e 99
cmp.i.v EQ
bf [end]

:[14]
push.v self.no2
pushi.e 1
cmp.i.v NEQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.no3

:[16]
pushi.e 384
conv.i.v
pushi.e 270
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fr3
push.v self.no3
push.v self.fr3
conv.v.i
pop.v.v [stacktop]self.side
push.v self.no3
pushi.e -90
mul.i.v
push.v self.fr3
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.no3
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
pushi.e 300
push.v self.fr3
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 270
push.v self.fr3
conv.v.i
pop.v.i [stacktop]self.y

:[18]
push.v self.no3
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 270
push.v self.fr3
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 320
push.v self.fr3
conv.v.i
pop.v.i [stacktop]self.y

:[20]
push.v self.no3
pushi.e 3
cmp.i.v EQ
bf [end]

:[21]
pushi.e 380
push.v self.fr3
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 320
push.v self.fr3
conv.v.i
pop.v.i [stacktop]self.y

:[end]