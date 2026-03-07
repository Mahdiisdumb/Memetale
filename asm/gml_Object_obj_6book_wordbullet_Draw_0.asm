.localvar 0 arguments

:[0]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.word
call.i string_width(argc=1)
pop.v.v self.width
pushi.e 100
conv.i.d
push.v self.width
div.v.d
pop.v.v self.factor
push.v self.image_blend
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 4.2
conv.d.v
push.v self.factor
push.v self.word
push.v self.y
push.v self.x
call.i draw_text_transformed(argc=6)
popz.v
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.x
pushi.e 405
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
push.v self.x
pushi.e 120
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
push.v self.shake
push.d 0.2
add.d.v
pop.v.v self.shake
push.v self.x
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.y

:[end]