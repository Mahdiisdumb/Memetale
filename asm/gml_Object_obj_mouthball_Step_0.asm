.localvar 0 arguments

:[0]
push.v self.maxer
push.d 1.1
cmp.d.v LT
bf [2]

:[1]
push.v self.maxer
push.d 0.1
add.d.v
pop.v.v self.maxer

:[2]
push.v self.maxer
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.image_xscale
push.v self.maxer
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.image_yscale
push.v self.xprev3
pop.v.v self.xprev4
push.v self.yprev3
pop.v.v self.yprev4
push.v self.xprev2
pop.v.v self.xprev3
push.v self.yprev2
pop.v.v self.yprev3
push.v self.xprevious
pop.v.v self.xprev2
push.v self.yprevious
pop.v.v self.yprev2
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.bounces
pop.v.v self.pb
push.v self.bounces
pushi.e 7
cmp.i.v LT
bf [8]

:[3]
push.v self.x
pushbltn.v self.room_width
pushi.e 20
sub.i.v
cmp.v.v GT
bf [5]

:[4]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.hspeed
neg.v
pop.v.v self.hspeed
push.v self.bounces
pushi.e 1
add.i.v
pop.v.v self.bounces

:[8]
push.v self.bounces
pushi.e 7
cmp.i.v LT
bf [14]

:[9]
push.v self.x
pushi.e 20
cmp.i.v LT
bf [11]

:[10]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.v self.hspeed
neg.v
pop.v.v self.hspeed
push.v self.bounces
pushi.e 1
add.i.v
pop.v.v self.bounces

:[14]
push.v self.bounces
pushi.e 7
cmp.i.v LT
bf [20]

:[15]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.y
pushbltn.v self.room_height
pushi.e 20
sub.i.v
cmp.v.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.vspeed
neg.v
pop.v.v self.vspeed
push.v self.bounces
pushi.e 1
add.i.v
pop.v.v self.bounces

:[20]
push.v self.bounces
pushi.e 7
cmp.i.v LT
bf [26]

:[21]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
push.v self.y
pushi.e 20
cmp.i.v LT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v self.bounces
pushi.e 1
add.i.v
pop.v.v self.bounces
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[26]
push.v self.bounces
push.v self.pb
cmp.v.v GT
bf [29]

:[27]
pushi.e 1588
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v

:[29]
push.v self.x
pushbltn.v self.room_width
pushi.e 300
add.i.v
cmp.v.v GT
bf [31]

:[30]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[31]
push.v self.x
pushi.e -300
cmp.i.v LT
bf [end]

:[32]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]