.localvar 0 arguments

:[0]
push.v self.col
pushi.e 1
sub.i.v
pop.v.v self.col
push.v self.col
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
push.v self.object_index
conv.v.i
pop.v.i [stacktop]self.image_index

:[end]