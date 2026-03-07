.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.x
pushi.e 10
sub.i.v
pop.v.v self.x1
push.v 1576.x
pushi.e 30
add.i.v
pop.v.v self.x2
push.v 1576.y
pushi.e 5
sub.i.v
pop.v.v self.y1
push.v 1576.y
pushi.e 35
add.i.v
pop.v.v self.y2
push.v self.glowamt
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y1
push.v self.x1
pushi.e 0
conv.i.v
pushi.e 1647
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.glowamt
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.glowyes
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
push.d 0.5
push.v 1576.x
pushi.e 1200
conv.i.d
div.d.v
add.v.d
pop.v.v self.glowamt
push.v self.maxvol
push.v 1576.x
pushi.e 600
conv.i.d
div.d.v
sub.v.v
pop.v.v self.curvol
push.v self.curvol
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
pop.v.i self.curvol

:[4]
push.v self.curvol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[5]
push.v self.glowyes
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
push.v self.glowamt
push.d 0.02
sub.d.v
pop.v.v self.glowamt
push.v self.glowamt
pushi.e 0
cmp.i.v LTE
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]