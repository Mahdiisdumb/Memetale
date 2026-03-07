.localvar 0 arguments

:[0]
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 1
add.i.v
pop.v.v self.blue

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
push.v self.totalbt
cmp.v.v LT
bf [end]

:[4]
pushi.e 0
push.v self.i
pushi.e 360
mul.i.v
push.v self.totalbt
div.v.v
add.v.i
pop.v.v self.dir
push.v self.x
push.v self.dir
pushi.e 90
sub.i.v
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx
push.v self.y
push.v self.dir
pushi.e 90
sub.i.v
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy
pushi.e 659
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.loopbullet
push.v self.speed
push.v self.loopbullet
conv.v.i
pop.v.v [stacktop]self.speed
pushi.e 360
conv.i.d
push.v self.circ
push.v self.speed
div.v.v
div.v.d
push.v self.loopbullet
conv.v.i
pop.v.v [stacktop]self.anglechange
push.v self.dir
push.v self.loopbullet
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.xadd
push.v self.loopbullet
conv.v.i
pop.v.v [stacktop]self.xadd
push.v self.idealradius
push.v self.loopbullet
conv.v.i
pop.v.v [stacktop]self.idealradius
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.loopbullet
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.specialtimer
push.v self.loopbullet
conv.v.i
pop.v.v [stacktop]self.specialtimer
push.v self.blue
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.blue

:[6]
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
push.v self.loopbullet
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 3
pop.v.i self.blue

:[8]
push.v self.blue
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.blue

:[10]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[end]