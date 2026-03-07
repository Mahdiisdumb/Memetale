.localvar 0 arguments

:[0]
push.v self.direction
pushi.e 2
sub.i.v
pop.v.v self.direction
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.size
push.d 0.025
add.d.v
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale

:[end]