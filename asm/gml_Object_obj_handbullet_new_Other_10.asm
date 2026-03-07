.localvar 0 arguments

:[0]
push.v self.moved
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.cn
cmp.v.v LT
bf [6]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pushenv [5]

:[4]
pushi.e 2
conv.i.v
push.v 744.y
pushi.e 6
add.i.v
push.v 744.x
pushi.e 6
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.2
pop.v.d self.friction

:[5]
popenv [4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
pushi.e 1
pop.v.i self.moved

:[7]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d -0.4
cmp.d.v LT
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]