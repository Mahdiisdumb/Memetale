.localvar 0 arguments

:[0]
push.v self.i
pushi.e 18
mul.i.v
pop.v.v self.ang
push.v self.ang
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.ang
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 1671
conv.i.v
push.v self.yy
push.v self.y
add.v.v
push.v self.xx
push.v self.x
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.v self.i
pushi.e 20
cmp.i.v LT
bf [end]

:[1]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.spec
pushi.e 2
cmp.i.v EQ
bf [end]

:[2]
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]