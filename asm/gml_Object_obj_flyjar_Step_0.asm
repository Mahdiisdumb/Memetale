.localvar 0 arguments

:[0]
push.v self.off
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
push.d 0.02
add.d.v
pop.v.v self.image_alpha

:[5]
push.v 308.phase
pushi.e 2
cmp.i.v GT
bt [7]

:[6]
push.v 308.phase
pushi.e 1
cmp.i.v LT
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 2
pop.v.i self.off

:[10]
push.v self.off
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.05
cmp.d.v LTE
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]