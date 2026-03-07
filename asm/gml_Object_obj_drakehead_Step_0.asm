.localvar 0 arguments

:[0]
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.y
push.v self.a
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.a
push.d 0.05
add.d.v
pop.v.v self.a
push.v self.a
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.down

:[3]
push.v self.down
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
push.v self.y
push.v self.a
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.a
push.d 0.05
sub.d.v
pop.v.v self.a
push.v self.a
pushi.e -1
cmp.i.v LTE
bf [end]

:[5]
pushi.e 1
pop.v.i self.down

:[end]