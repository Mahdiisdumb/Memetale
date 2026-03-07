.localvar 0 arguments

:[0]
pushi.e 1190
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.b
push.v self.vspeed
neg.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.b
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.hspeed
push.v self.b
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.b
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.image_angle
push.v self.b
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.image_xscale
push.v self.b
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.b
conv.v.i
pop.v.v [stacktop]self.image_yscale
pushi.e 1198
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[1]
push.v 1198.fakev
pushi.e -2
cmp.i.v GT
bf [3]

:[2]
push.v 1198.fakev
pushi.e 6
sub.i.v
pop.v.v 1198.fakev

:[3]
push.v 1198.fakev
pushi.e -3
cmp.i.v LT
bf [5]

:[4]
pushi.e -3
pop.v.i 1198.fakev

:[5]
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]