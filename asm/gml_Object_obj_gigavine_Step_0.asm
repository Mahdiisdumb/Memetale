.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [5]

:[2]
push.v self.image_xscale
push.d 0.08
add.d.v
pop.v.v self.image_xscale
push.v self.image_xscale
push.d 0.2
cmp.d.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.visible

:[4]
b [7]

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 4
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 160
pushi.e -1
pushi.e 4
push.v [array]self.alarm
push.d 23.333333333333332
mul.d.v
add.v.i
pushi.e 160
pushi.e -1
pushi.e 4
push.v [array]self.alarm
push.d 23.333333333333332
mul.d.v
add.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[11]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[12]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.memorymode
pushi.e 0
cmp.i.v EQ
bf [15]

:[13]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
push.v self.memorymode
pushi.e 1
cmp.i.v EQ
bf [end]

:[16]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[17]
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.active

:[end]