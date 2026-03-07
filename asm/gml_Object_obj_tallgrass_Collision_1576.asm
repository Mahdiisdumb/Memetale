.localvar 0 arguments

:[0]
push.v 1093.soundtimer
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.c
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i 1093.sound

:[5]
pushi.e 1
pop.v.i self.image_index
pushi.e 2
pop.v.i self.c

:[end]