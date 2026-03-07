.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.9
cmp.d.v LTE
bf [2]

:[1]
push.v self.over
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_alpha
push.v self.tspeed
add.v.v
pop.v.v self.image_alpha

:[5]
push.v self.image_alpha
push.d 0.9
cmp.d.v GT
bf [7]

:[6]
push.v self.over
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 1
pop.v.i self.over
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]