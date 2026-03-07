.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.hspeed
pushi.e 6
pop.v.i self.speedfactor
pushi.e 1
pop.v.i self.choice
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 364.xlen
pushi.e 2
mul.i.v
call.i random(argc=1)
pushi.e 8
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 8
mul.i.v
pop.v.v self.xfactor
push.v 364.xmid
push.v 364.xlen
sub.v.v
push.v self.xfactor
add.v.v
pop.v.v self.x

:[2]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.visible

:[end]