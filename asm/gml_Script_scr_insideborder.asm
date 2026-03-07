.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.in_border
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v GT
bf [4]

:[1]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [4]

:[2]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
cmp.v.v LT
bf [4]

:[3]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
cmp.v.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.in_border

:[7]
push.v self.in_border
ret.v

:[end]