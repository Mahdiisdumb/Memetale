.localvar 0 arguments

:[0]
push.v self.form
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.size
push.d 0.5
add.d.v
pop.v.v self.size

:[2]
push.v self.size
push.d 3.5
cmp.d.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.form

:[4]
push.v self.form
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.size
push.d 0.3
sub.d.v
pop.v.v self.size
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale

:[end]