.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.x
pushi.e 22
add.i.v
pop.v.v self.facex
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.facey
pushi.e 0
pop.v.i self.facetime
push.d 0.5
pop.v.d self.r
pushi.e 0
pop.v.i self.atk
pushi.e 10
pop.v.i self.smuggy

:[end]