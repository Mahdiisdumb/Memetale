.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 6
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.salad
pushi.e -5
pushi.e 454
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.salad
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.con

:[end]