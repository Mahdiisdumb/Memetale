.localvar 0 arguments

:[0]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushbltn.v self.argument0
sub.v.v
cmp.v.v GT
bf [2]

:[1]
push.v self.x
pushbltn.v self.argument0
sub.v.v
pop.v.v self.x

:[2]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushbltn.v self.argument1
add.v.v
cmp.v.v LT
bf [end]

:[3]
push.v self.x
pushbltn.v self.argument1
add.v.v
pop.v.v self.x

:[end]