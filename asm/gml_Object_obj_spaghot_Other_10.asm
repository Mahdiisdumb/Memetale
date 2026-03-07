.localvar 0 arguments

:[0]
push.v self.level
pushi.e 1
add.i.v
pop.v.v self.level
pushi.e -1
push.v self.level
conv.v.i
push.v [array]self.levelpic
pop.v.v self.sprite_index

:[end]