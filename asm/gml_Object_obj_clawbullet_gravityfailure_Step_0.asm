.localvar 0 arguments

:[0]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
cmp.v.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.speed

:[2]
push.v self.shake
push.d 0.02
add.d.v
pop.v.v self.shake
push.v self.x
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[end]