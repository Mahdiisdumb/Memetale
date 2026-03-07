.localvar 0 arguments

:[0]
push.v 744.x
push.v self.x
cmp.v.v GT
bf [2]

:[1]
push.v self.hspeed
push.d 0.1
add.d.v
pop.v.v self.hspeed
b [3]

:[2]
push.v self.hspeed
push.d 0.1
sub.d.v
pop.v.v self.hspeed

:[3]
push.v 744.y
push.v self.y
cmp.v.v GT
bf [5]

:[4]
push.v self.vspeed
push.d 0.1
add.d.v
pop.v.v self.vspeed
b [6]

:[5]
push.v self.vspeed
push.d 0.1
sub.d.v
pop.v.v self.vspeed

:[6]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]