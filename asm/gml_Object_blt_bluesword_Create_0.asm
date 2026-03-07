.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 2
pop.v.i self.speartype
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
pop.v.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v self.x
push.d -0.1
pop.v.d self.hspeed
push.d -0.1
pop.v.d self.friction
pushi.e 20
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.g
pushi.e 0
pop.v.i self.hurted
pushi.e 0
pop.v.i self.blconnum

:[end]