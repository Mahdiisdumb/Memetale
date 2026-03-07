.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.l
pushi.e 0
pop.v.i self.parent
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.startspeed
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.startdir
pushi.e 4
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.i
pop.v.v self.limit
pushi.e 0
pop.v.i self.startgrav
pushi.e 0
pop.v.i self.rotdir
push.v self.x
pushi.e 12
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 12
sub.i.v
pop.v.v self.y

:[end]