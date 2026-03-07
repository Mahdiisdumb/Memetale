.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.touched
push.v self.y
pushi.e 60
cmp.i.v LT
bf [2]

:[1]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y

:[2]
pushi.e 0
pop.v.i self.sd_noise

:[end]