.localvar 0 arguments

:[0]
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.countdown
pushi.e 1
sub.i.v
pop.v.v self.countdown
pushi.e 0
pop.v.i self.down

:[2]
push.v self.countdown
pushi.e 1
cmp.i.v LTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_index

:[4]
push.v self.alphoid
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
push.v self.alphoid
push.d 0.2
add.d.v
pop.v.v self.alphoid

:[6]
push.v self.alphoid
pop.v.v self.image_alpha

:[end]