.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 7
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 6
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed

:[2]
pushi.e 50
pop.v.i self.y
pushi.e 328
pop.v.i self.parent
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.off
pushi.e 0
pop.v.i self.green
call.i scr_monstersum(argc=0)
pop.v.v self.pop

:[end]