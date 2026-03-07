.localvar 0 arguments

:[0]
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_index
b [end]

:[2]
push.v self.c
pushi.e 1
sub.i.v
pop.v.v self.c

:[end]