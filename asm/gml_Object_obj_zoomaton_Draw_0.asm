.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.scalefactor
push.v self.scalefactor
push.v self.y
push.v self.x
push.v self.height
push.v self.width
push.v self.top
push.v self.left
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.03
add.d.v
pop.v.v self.image_alpha

:[3]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.left
push.v self.ldiff
add.v.v
pop.v.v self.left
push.v self.top
push.v self.tdiff
add.v.v
pop.v.v self.top
push.v self.height
push.v self.hdiff
add.v.v
pop.v.v self.height
push.v self.width
push.v self.wdiff
add.v.v
pop.v.v self.width
push.v self.scalefactor
push.v self.sdiff
add.v.v
pop.v.v self.scalefactor
push.v self.left
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
pushi.e 2
pop.v.i self.on

:[6]
push.v self.on
pushi.e 1
cmp.i.v GT
bf [8]

:[7]
push.v self.on
pushi.e 1
add.i.v
pop.v.v self.on

:[8]
push.v self.on
pushi.e 60
cmp.i.v GT
bf [end]

:[9]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]