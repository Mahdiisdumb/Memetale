.localvar 0 arguments

:[0]
push.v self.flush
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[5]
push.v self.flush
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
pop.v.i self.flush
pushi.e 1
pop.v.i self.image_alpha

:[10]
push.v self.iteration
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.flush
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i self.flush
pushi.e 0
pop.v.i self.image_alpha

:[15]
push.v self.iend
push.v self.iteration
cmp.v.v EQ
bf [end]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[end]