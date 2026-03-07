.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 21
pushi.e -5
pushi.e 440
push.v [array]global.flag
sub.v.i
pop.v.v self.height
push.v self.height
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.y
pushi.e 23
add.i.v
push.v self.height
sub.v.v
push.v self.x
push.v self.height
pushi.e 19
conv.i.v
pushi.e 23
push.v self.height
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1965
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[2]
push.v self.height
pushi.e 5
cmp.i.v GT
bf [end]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[5]
push.i 16777215
conv.i.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.buby
add.v.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bubx
add.v.v
call.i draw_point_color(argc=3)
popz.v
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.buby
push.d 0.1
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
sub.v.v
pop.i.v [array]self.buby
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.bubx
push.v self.siner
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.v
pop.i.v [array]self.bubx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.buby
push.v self.y
add.v.v
push.v self.y
pushi.e 23
add.i.v
push.v self.height
sub.v.v
pushi.e 1
add.i.v
cmp.v.v LT
bf [7]

:[6]
pushi.e 20
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.buby
pushi.e 4
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bubx

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]