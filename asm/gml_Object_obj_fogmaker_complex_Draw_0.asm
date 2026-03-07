.localvar 0 arguments

:[0]
push.v self.dr
pushi.e 1
add.i.v
pop.v.v self.dr
push.v self.dr
pushi.e 3
cmp.i.v GT
bf [2]

:[1]
push.v self.fog_r
pushi.e 1
add.i.v
pop.v.v self.fog_r
pushi.e 0
pop.v.i self.dr

:[2]
push.v 1576.x
pushbltn.v self.room_width
div.v.v
pop.v.v self.fog_alpha
pushi.e 0
pop.v.i self.i
pushi.e 0
pop.v.i self.j
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[3]
pushi.e 32
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[4]
push.v self.fog_r
push.v self.i
add.v.v
push.v self.j
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.tfr
push.v self.tfr
pushi.e 40
cmp.i.v GTE
bf [6]

:[5]
push.v self.tfr
pushi.e 40
sub.i.v
pop.v.v self.tfr

:[6]
push.v self.fog_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.j
pushi.e 80
mul.i.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e 80
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
push.v self.tfr
pushi.e 0
conv.i.v
pushi.e 2032
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[7]
popz.i
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
pushi.e 0
pop.v.i self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[8]
popz.i
push.v self.fog_r
pushi.e 40
cmp.i.v GTE
bf [end]

:[9]
push.v self.fog_r
pushi.e 40
sub.i.v
pop.v.v self.fog_r

:[end]