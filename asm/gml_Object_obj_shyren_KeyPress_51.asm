.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.emotion
pushi.e 1
add.i.v
pop.v.v self.emotion

:[end]