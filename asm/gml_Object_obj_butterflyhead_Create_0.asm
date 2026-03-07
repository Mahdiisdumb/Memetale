.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 15
add.i.v
pop.v.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pushi.e 19
add.i.v
pop.v.v self.x
pushi.e 50
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 538
conv.i.v
push.v self.y
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.x
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.walking
pushi.e 2
pop.v.i self.shake
push.v self.y
pop.v.v self.nowy
push.v self.x
pop.v.v self.nowx
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 30
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 15
pop.v.i self.factor
pushi.e 9
pop.v.i self.dmg

:[end]