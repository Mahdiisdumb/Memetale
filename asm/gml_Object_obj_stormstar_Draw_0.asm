.localvar 0 arguments

:[0]
push.v self.xxxx
pop.v.v self.xxxxx
push.v self.yyyy
pop.v.v self.yyyyy
push.v self.xxx
pop.v.v self.xxxx
push.v self.yyy
pop.v.v self.yyyy
push.v self.xx
pop.v.v self.xxx
push.v self.yy
pop.v.v self.yyy
push.v self.xprevious
pop.v.v self.xx
push.v self.yprevious
pop.v.v self.yy
push.v self.image_alpha
push.d 0.65
sub.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.yyyyy
push.v self.xxxxx
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.d 0.5
sub.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.yyy
push.v self.xxx
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
pushi.e 16
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v
push.v self.image_blend
call.i draw_set_color(argc=1)
popz.v
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.oo
b [4]

:[3]
pushi.e 0
pop.v.i self.oo

:[4]
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.d 0.25
pushi.e 1
push.v self.image_alpha
sub.v.i
sub.v.d
call.i draw_set_alpha(argc=1)
popz.v

:[6]
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.d 0.5
pushi.e 1
push.v self.image_alpha
sub.v.i
sub.v.d
call.i draw_set_alpha(argc=1)
popz.v

:[8]
pushi.e 0
conv.i.v
pushi.e 200
push.v self.oo
pushi.e 20
mul.i.v
add.v.i
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[9]
push.v self.aa
pushi.e 0
cmp.i.v GT
bf [end]

:[10]
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle

:[end]