.localvar 0 arguments

:[0]
push.v self.move
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.axetype
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.d 1.8
pop.v.d self.hspeed
b [4]

:[3]
push.d -1.8
pop.v.d self.hspeed

:[4]
push.d -3.8
pop.v.d self.vspeed
push.v self.hard
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.d -3.4
pop.v.d self.vspeed

:[6]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.d -3.1
pop.v.d self.vspeed

:[8]
pushi.e 270
pop.v.i self.gravity_direction
push.d 0.2
pop.v.d self.gravity

:[9]
push.v self.move
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.hspeed
pushi.e 10
pushi.e 14
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.move

:[11]
pushi.e 1
pop.v.i self.visible

:[end]