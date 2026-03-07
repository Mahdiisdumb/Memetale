.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -1
pop.v.i self.lefter
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.pspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.siner
pushi.e 338
pop.v.i self.arms
pushi.e 1
pop.v.i self.sineron
pushi.e 0
pop.v.i self.shaker
push.v self.x
pop.v.v self.remx

:[end]