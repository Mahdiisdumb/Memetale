.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.sprite_width
sub.v.v
pop.v.v self.y
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.amt
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.reverse
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
pushi.e -4
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.reverse
b [3]

:[2]
push.v self.object_index
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.sprite_width
sub.v.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 240
add.i.v
call.i instance_create(argc=3)
popz.v

:[3]
push.d 0.334
pop.v.d self.image_speed

:[end]