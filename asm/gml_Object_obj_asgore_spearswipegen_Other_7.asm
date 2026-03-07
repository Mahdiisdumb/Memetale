.localvar 0 arguments

:[0]
push.v self.sprite_index
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 657
pop.v.i self.sprite_index

:[end]