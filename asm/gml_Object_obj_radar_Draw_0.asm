.localvar 0 arguments

:[0]
pushi.e 40
pop.v.i self.r
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.r
pushi.e 2
add.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
push.v self.r
pushi.e 3
add.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.v self.i
pushi.e 1
add.i.v
pushi.e 10
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
push.v self.y
push.v self.siner
push.v self.i
add.v.v
pushi.e 10
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.x
push.v self.siner
push.v self.i
add.v.v
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.r
mul.v.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.radardogalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.radardogy
add.v.v
push.v self.x
push.v self.radardogx
add.v.v
pushi.e 0
conv.i.v
pushi.e 812
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.radardogalpha
push.d 0.05
sub.d.v
pop.v.v self.radardogalpha
push.v self.radardogalpha
push.d -0.6
cmp.d.v LT
bf [end]

:[4]
pushi.e 1
pop.v.i self.radardogalpha
pushi.e 40
conv.i.v
call.i random(argc=1)
pushi.e 30
sub.i.v
pop.v.v self.radardogx
pushi.e 40
conv.i.v
call.i random(argc=1)
pushi.e 30
sub.i.v
pop.v.v self.radardogy

:[end]