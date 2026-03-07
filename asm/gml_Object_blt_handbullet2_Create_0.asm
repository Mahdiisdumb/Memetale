.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
add.i.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_index

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
pushi.e 3
conv.i.v
call.i path_start(argc=4)
popz.v
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.rot
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.inactive

:[end]