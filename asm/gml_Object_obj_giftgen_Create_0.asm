.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 642
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.i
pushi.e 55
mul.i.v
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.blt
pushi.e 7
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 83
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e -50
push.v self.i
pushi.e 50
mul.i.v
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.v [stacktop]self.sinex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
push.v [stacktop]self.sinex
pushi.e 100
conv.i.d
div.d.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 45
sub.i.v
mul.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
add.v.v
pushi.e 67
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.v [stacktop]self.xstar
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.bltx
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.siner

:[end]