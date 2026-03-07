.localvar 0 arguments

:[0]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y
call.i scr_depth(argc=0)
popz.v
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]