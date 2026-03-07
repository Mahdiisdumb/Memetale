.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 103
sub.i.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 40
add.i.v
pop.v.v self.y
pushi.e 8
pop.v.i self.hspeed
push.d 0.3
pop.v.d self.friction
pushi.e 0
pop.v.i self.con
pushi.e 1187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1187.dist
pop.v.v self.dist
push.v 1187.maxdist
pop.v.v self.maxdist
push.v 1187.timertime
pop.v.v self.time
push.v 1187.timertime
pop.v.v self.inittime
b [3]

:[2]
pushi.e 0
pop.v.i self.dist
pushi.e 400
pop.v.i self.maxdist
pushi.e 600
pop.v.i self.time
pushi.e 600
pop.v.i self.inittime

:[3]
pushi.e 0
pop.v.i self.finished

:[end]