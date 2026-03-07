.localvar 0 arguments

:[0]
push.v self.parent
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
push.d 1.5
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.speed
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.g
pushi.e 0
pop.v.i self.rotdir
call.i scr_perpendicular(argc=0)
pop.v.v self.startdir
push.v self.speed
pop.v.v self.startspeed

:[2]
pushi.e 1
pop.v.i self.visible
push.v self.startdir
pop.v.v self.direction
push.v self.startspeed
pop.v.v self.speed

:[end]