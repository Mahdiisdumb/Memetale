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
push.v self.s
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v 1576.x
pushi.e 440
conv.i.d
div.d.v
pop.v.v self.fog_alpha

:[4]
push.v self.fog_alpha
pushi.e 1
cmp.i.v GT
bf [7]

:[5]
push.v self.s
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.plot
pushi.e 99
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pushi.e 1
push.v self.fog_alpha
sub.v.i
add.v.i
pop.v.v self.fog_alpha

:[10]
pushi.e 0
pop.v.i self.i
pushi.e 0
pop.v.i self.j
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [14]

:[11]
pushi.e 13
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[12]
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
pushi.e 80
mul.i.v
pushi.e 80
conv.i.v
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
push.v self.fog_r
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
bt [12]

:[13]
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
bt [11]

:[14]
popz.i
push.v self.fog_r
pushi.e 80
cmp.i.v GTE
bf [end]

:[15]
push.v self.fog_r
pushi.e 80
sub.i.v
pop.v.v self.fog_r

:[end]