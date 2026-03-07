.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v 762.y
push.v 760.y
sub.v.v
ret.v

:[2]
pushbltn.v self.argument0
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
ret.v

:[end]