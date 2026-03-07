.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.mode
push.v self.overmode
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.mode

:[2]
pushi.e 1191
conv.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.ang
pushi.e 26
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
pushi.e 11
add.i.v
push.v self.ang
pushi.e 26
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.sh
push.v self.ang
push.v self.sh
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.sh
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.shotno
pushi.e 1
add.i.v
pop.v.v self.shotno
push.v self.shotno
pushi.e 6
cmp.i.v LT
bf [4]

:[3]
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
b [end]

:[4]
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.shotno

:[end]