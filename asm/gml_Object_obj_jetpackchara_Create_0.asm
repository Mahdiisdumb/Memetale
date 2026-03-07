.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1800
pop.v.i self.timertime
pushi.e 20250
pop.v.i self.maxdist
pushi.e 20250
pop.v.i self.dist
pushi.e 1186
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 40
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 103
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.won
pushi.e 1
pop.v.i self.eligible

:[end]