.localvar 0 arguments

:[0]
push.v self.col
pushi.e 2
add.i.v
pop.v.v self.col
push.v self.col
pushi.e 4
cmp.i.v GT
bf [end]

:[1]
pushi.e 4
pop.v.i self.col

:[end]