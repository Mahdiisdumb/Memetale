.localvar 0 arguments

:[0]
pushi.e 4
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.rect
pushi.e 0
pop.v.i self.rectaur
pushi.e 0
pop.v.i self.active
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 12
cmp.i.v LT
bf [3]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
b [4]

:[3]
pushi.e 1
pop.v.i self.active

:[4]
pushi.e 0
pop.v.i self.con

:[end]