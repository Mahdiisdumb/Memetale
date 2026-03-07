.localvar 0 arguments

:[0]
push.v self.dongle
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
pushi.e 22
pop.v.i self.dongle
push.v self.image_index
pushi.e 5
cmp.i.v LT
bf [3]

:[2]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[3]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1
pop.v.i self.finished

:[end]