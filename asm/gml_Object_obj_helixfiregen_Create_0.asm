.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.mys
push.d 0.1
pop.v.d self.mysadd
pushi.e 4
pop.v.i self.mysv
pushi.e 4
pop.v.i self.mysf
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.count
push.d 1.5
conv.d.v
call.i random(argc=1)
pop.v.v self.selfspeed
push.v self.selfspeed
push.d 0.1
sub.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
pop.v.v self.selfspeed2

:[end]