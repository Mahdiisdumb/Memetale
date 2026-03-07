.localvar 0 arguments

:[0]
push.v self.dogtimer
pushi.e 1
add.i.v
pop.v.v self.dogtimer
push.v self.dogtimer
pushi.e 3000
cmp.i.v GTE
bf [end]

:[1]
pushi.e 1059
pop.v.i self.sprite_index

:[end]