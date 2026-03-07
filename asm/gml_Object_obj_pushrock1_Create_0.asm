.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.push
pushi.e -5
pushi.e 31
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.x
pushi.e 100
add.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.push

:[end]