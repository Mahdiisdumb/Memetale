.localvar 0 arguments

:[0]
push.v self.direction
push.v self.turn
add.v.v
pop.v.v self.direction
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.turn
push.d 0.05
add.d.v
pop.v.v self.turn

:[2]
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [4]

:[3]
push.v self.turn
push.d 0.01
add.d.v
pop.v.v self.turn

:[4]
push.v self.backwards
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.turn
push.d 0.1
sub.d.v
pop.v.v self.turn

:[6]
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.x

:[end]