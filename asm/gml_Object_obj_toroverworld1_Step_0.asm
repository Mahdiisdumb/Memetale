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
pushi.e 764
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e 1
pop.v.i self.myinteract
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[2]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
push.d 0.2
pop.v.d self.image_speed

:[4]
b [9]

:[5]
pushi.e 0
pop.v.i self.myinteract
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[7]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.d 0.2
pop.v.d self.image_speed

:[9]
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
push.v self.y
pushi.e 140
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i self.fader

:[14]
push.v self.fader
pushi.e 1
cmp.i.v EQ
bf [end]

:[15]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.2
cmp.d.v LTE
bf [end]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[end]