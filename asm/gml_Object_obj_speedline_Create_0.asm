.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i random(argc=1)
push.i 16776960
conv.i.v
push.i 16711680
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.d 0.5
conv.d.v
call.i random(argc=1)
push.i 16777215
conv.i.v
push.v self.image_blend
call.i merge_color(argc=3)
pop.v.v self.image_blend
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.c
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.o
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pushi.e 18
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.x
pushi.e 26
pop.v.i self.vspeed
pushi.e 6
pop.v.i self.image_yscale
push.d 0.9
pop.v.d self.image_alpha
pushi.e -100
pop.v.i self.y

:[2]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 18
pushi.e 18
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.x
pushi.e 22
pop.v.i self.vspeed
pushi.e 4
pop.v.i self.image_yscale
push.d 0.7
pop.v.d self.image_alpha
pushi.e -70
pop.v.i self.y

:[4]
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 30
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.x
pushi.e 15
pop.v.i self.vspeed
pushi.e 3
pop.v.i self.image_yscale
push.d 0.3
pop.v.d self.image_alpha
pushi.e -40
pop.v.i self.y

:[6]
push.v self.o
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
pushbltn.v self.room_width
push.v self.x
sub.v.v
pushi.e 4
sub.i.v
pop.v.v self.x

:[end]