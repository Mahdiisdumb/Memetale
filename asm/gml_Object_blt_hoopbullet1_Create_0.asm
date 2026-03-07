.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.bullettype
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 2
pop.v.i self.hspeed
b [3]

:[2]
pushi.e -2
pop.v.i self.hspeed

:[3]
push.d 0.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravitystart
push.v self.gravitystart
pop.v.v self.gravity
pushi.e 1
pop.v.i self.gravitywave
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.r
push.v self.r
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 270
pop.v.i self.gravity_direction

:[5]
push.v self.r
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 90
pop.v.i self.gravity_direction

:[7]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 8
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.sterile
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
cmp.v.v GT
bf [9]

:[8]
push.v self.y
pushi.e 20
sub.i.v
pop.v.v self.y

:[9]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
cmp.v.v LT
bf [end]

:[10]
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y

:[end]