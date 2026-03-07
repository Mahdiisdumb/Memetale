.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.spec
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_npc_anim(argc=0)
popz.v

:[2]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.d 0.25
pop.v.d self.image_speed

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[8]
pushi.e 0
pop.v.i self.spec
pushi.e 0
pop.v.i self.image_speed

:[end]