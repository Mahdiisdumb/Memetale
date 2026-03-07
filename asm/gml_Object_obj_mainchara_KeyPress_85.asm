.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 465
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pushi.e -5
pushi.e 465
pop.v.i [array]global.flag
push.i 16711680
pop.v.i self.image_blend
b [end]

:[3]
pushi.e 0
pushi.e -5
pushi.e 465
pop.v.i [array]global.flag
push.i 65535
pop.v.i self.image_blend

:[end]