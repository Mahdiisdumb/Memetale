.localvar 0 arguments

:[0]
pushi.e 225
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[1]
push.v 225.dogignore
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y

:[3]
push.v 225.dogignore
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale
push.v self.xstart
push.d 0.2
push.v self.sprite_width
mul.v.d
sub.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 30
add.i.v
pop.v.v self.y

:[5]
push.v 225.dogignore
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 4
pop.v.i self.image_xscale
pushi.e 4
pop.v.i self.image_yscale
push.v self.xstart
push.d 0.25
push.v self.sprite_width
mul.v.d
sub.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 70
add.i.v
pop.v.v self.y

:[7]
push.v 225.dogignore
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 5
pop.v.i self.image_xscale
pushi.e 5
pop.v.i self.image_yscale
push.v self.xstart
push.d 0.3333333333333333
push.v self.sprite_width
mul.v.d
sub.v.v
pop.v.v self.x
push.v 760.y
pushi.e 85
sub.i.v
pop.v.v self.y

:[9]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
pushi.e 32
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [end]

:[11]
pushi.e 3
pop.v.i 225.dogignore

:[end]