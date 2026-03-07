.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 210
add.i.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e 8
pop.v.i self.vspeed
push.d 0.3
pop.v.d self.friction
pushi.e 0
pop.v.i self.con
pushi.e 1212
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1212.cooltimer
pop.v.v self.time
b [3]

:[2]
pushi.e 900
pop.v.i self.time

:[3]
pushi.e 0
pop.v.i self.finished
pushi.e -1
pop.v.i self.orange

:[end]