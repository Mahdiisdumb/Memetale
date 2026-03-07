.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.idealstep
pushbltn.v self.argument0
cmp.v.v LT
bf [3]

:[2]
push.v self.idealstep
pushi.e 1
add.i.v
pop.v.v self.idealstep

:[3]
push.v self.idealxx2
push.v self.x
sub.v.v
pushbltn.v self.argument0
div.v.v
pop.v.v self.idealxdist
push.v self.idealyy2
push.v self.y
sub.v.v
pushbltn.v self.argument0
div.v.v
pop.v.v self.idealydist
push.v self.x
push.v self.idealxdist
push.v self.idealstep
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.idealydist
push.v self.idealstep
mul.v.v
add.v.v
pop.v.v self.y

:[end]