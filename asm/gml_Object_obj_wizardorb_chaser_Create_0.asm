.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.direction
pushi.e 30
pop.v.i self.first
pushi.e 0
pop.v.i self.col
pushi.e 1
pop.v.i self.zap
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v 744.x
pop.v.v self.x
push.v 744.y
pop.v.v self.y
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dirr
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.visible
pushi.e 8
pop.v.i self.dmg
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.king
pushi.e 0
pop.v.i self.time
pushi.e 0
pop.v.i self.heal
pushi.e 0
pop.v.i self.star
pushi.e 0
pushi.e -5
pushi.e 393
pop.v.i [array]global.flag

:[end]