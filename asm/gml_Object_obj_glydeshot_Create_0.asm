.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.aa
pushi.e 300
pushi.e 60
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.direction
pushi.e 7
pop.v.i self.speed
push.d -0.1
conv.d.v
call.i random(argc=1)
pop.v.v self.friction
pushi.e 9
pop.v.i self.dmg
pushi.e 229
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e -5
push.v 229.myself
conv.v.i
push.v [array]global.monsteratk
pop.v.v self.dmg

:[end]