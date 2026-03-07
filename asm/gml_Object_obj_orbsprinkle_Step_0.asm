.localvar 0 arguments

:[0]
push.v self.sprank
pushi.e 1
add.i.v
pop.v.v self.sprank
push.v self.sprank
pushi.e 14
cmp.i.v GT
bf [2]

:[1]
push.v self.alpha
push.d 0.08
sub.d.v
pop.v.v self.alpha

:[2]
push.v self.sprink
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.alpha
push.d 0.8
mul.d.v
pop.v.v self.image_alpha
pushi.e 1
pop.v.i self.sprink
b [5]

:[4]
push.v self.alpha
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.sprink

:[5]
push.v self.alpha
push.d 0.05
cmp.d.v LT
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]