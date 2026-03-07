.localvar 0 arguments

:[0]
push.i 50000
push.v self.y
pushi.e 10
mul.i.v
push.v self.sprite_height
pushi.e 4
mul.i.v
add.v.v
sub.v.i
pop.v.v self.depth
push.v self.hspeed
call.i abs(argc=1)
pop.v.v self.xchange
push.v self.vspeed
call.i abs(argc=1)
pop.v.v self.ychange
push.v self.xchange
push.v self.ychange
add.v.v
pop.v.v self.tchange
push.v self.size
pushi.e 10
cmp.i.v LT
bf [2]

:[1]
push.v self.size
push.v self.tchange
push.v self.size
pushi.e 10
mul.i.v
pushi.e 20
add.i.v
div.v.v
add.v.v
pop.v.v self.size

:[2]
push.v self.angle
push.v self.tchange
pushi.e 30
mul.i.v
push.v self.size
pushi.e 10
mul.i.v
div.v.v
add.v.v
pop.v.v self.angle
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale

:[end]