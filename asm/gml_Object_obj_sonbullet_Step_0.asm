.localvar 0 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.off
pushi.e 0
cmp.i.v EQ
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
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
sub.i.v
cmp.v.v LT
bf [7]

:[6]
pushi.e 1
pop.v.i self.off

:[7]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[9]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [11]

:[10]
push.v self.off
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]