.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v 761.x
push.v 759.x
sub.v.v
ret.v

:[2]
pushbltn.v self.argument0
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
ret.v

:[end]