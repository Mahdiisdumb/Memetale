.localvar 0 arguments

:[0]
push.v self.blut
pushi.e 1
add.i.v
pop.v.v self.blut
push.v self.blut
pushi.e 21
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.blue

:[2]
push.v self.blut
pushi.e 42
cmp.i.v GT
bf [4]

:[3]
pushi.e 0
pop.v.i self.blut
pushi.e 0
pop.v.i self.blue
pushi.e 0
pop.v.i self.image_index

:[4]
push.v self.stage
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 1
pop.v.i self.stage
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e -4
pop.v.i self.hspeed

:[end]