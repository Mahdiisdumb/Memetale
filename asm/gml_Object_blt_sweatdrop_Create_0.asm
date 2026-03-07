.localvar 0 arguments

:[0]
push.d 3.5
pop.v.d self.speed
pushi.e 0
pop.v.i self.visible
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 4
mod.i.v
pop.v.v self.gg
push.v self.gg
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
push.v 759.x
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
call.i random(argc=1)
add.v.v
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e 270
pop.v.i self.direction

:[2]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [5]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 16
sub.i.v
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e 122
conv.i.v
call.i random(argc=1)
push.d 1.5
mul.d.v
add.v.v
pop.v.v self.y
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 310
pop.v.i self.direction

:[5]
push.v self.gg
pushi.e 3
cmp.i.v EQ
bf [8]

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
add.i.v
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pushi.e 122
conv.i.v
call.i random(argc=1)
push.d 1.5
mul.d.v
add.v.v
pop.v.v self.y
push.v self.gg
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 235
pop.v.i self.direction

:[8]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.visible
pushi.e 8
pop.v.i self.dmg

:[end]