.localvar 0 arguments

:[0]
push.v self.y
push.v 760.y
pushi.e 4
add.i.v
cmp.v.v LT
bf [2]

:[1]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pop.v.v self.y
b [end]

:[2]
push.v 759.x
push.v self.sprite_width
sub.v.v
pop.v.v self.x

:[end]