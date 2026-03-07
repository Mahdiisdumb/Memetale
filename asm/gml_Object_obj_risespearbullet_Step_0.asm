.localvar 0 arguments

:[0]
push.v self.part
pushi.e 4
cmp.i.v EQ
bt [2]

:[1]
push.v self.deactivate
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]