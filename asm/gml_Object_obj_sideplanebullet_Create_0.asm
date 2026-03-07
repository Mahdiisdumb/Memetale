.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
push.v self.y
pushi.e 40
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.v.v self.y
pushi.e 6
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_index
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 40
add.i.v
pop.v.v self.x

:[2]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.image_index

:[4]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]