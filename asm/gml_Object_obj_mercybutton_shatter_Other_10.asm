.localvar 0 arguments

:[0]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[2]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.i
pushi.e 0
pop.v.i self.visible
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[3]
pushi.e 0
pop.v.i self.i
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[4]
pushi.e 480
conv.i.v
push.v self.y
pushi.e 21
add.i.v
push.v self.x
pushi.e 55
add.i.v
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.i
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.image_index
pushi.e -14
pushi.e 26
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.hspeed
push.d 0.1
push.v self.iii
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 7
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.aa
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[5]
popz.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[6]
pushi.e 480
conv.i.v
push.v self.y
pushi.e 21
add.i.v
push.v self.x
pushi.e 55
add.i.v
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.i
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.image_index
pushi.e 10
pushi.e 30
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.hspeed
push.d 0.1
push.v self.iii
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e -8
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.aa
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [6]

:[7]
popz.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[8]
popz.i
call.i instance_destroy(argc=0)
popz.v

:[end]