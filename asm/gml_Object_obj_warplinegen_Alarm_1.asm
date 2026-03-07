.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pop.v.v self.xx
push.v self.otheri
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -40
pop.v.i self.yy
push.v 744.x
pushi.e 10
add.i.v
pop.v.v self.xx
pushi.e 1
pop.v.i self.otheri
b [3]

:[2]
pushi.e 0
pop.v.i self.otheri
pushbltn.v self.room_height
pushi.e 40
add.i.v
pop.v.v self.yy

:[3]
pushi.e 317
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
popz.v
pushi.e 18
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 309
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[4]
pushi.e 24
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]