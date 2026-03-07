.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.idealx
pop.v.v self.x
pushi.e 480
pop.v.i self.y
pushi.e -10
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.con

:[3]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[4]
push.v self.y
push.v self.idealy
cmp.v.v LTE
bf [6]

:[5]
pushi.e 0
pop.v.i self.vspeed
push.v self.myspeed
pop.v.v self.hspeed
pushi.e 3
pop.v.i self.con

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [15]

:[7]
pushi.e 0
pop.v.i self.cool
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [10]

:[8]
push.v self.x
push.v self.idealx2
cmp.v.v LTE
bf [10]

:[9]
pushi.e 1
pop.v.i self.cool

:[10]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [13]

:[11]
push.v self.x
push.v self.idealx2
cmp.v.v GTE
bf [13]

:[12]
pushi.e 1
pop.v.i self.cool

:[13]
push.v self.cool
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.vspeed
pushi.e 4
pop.v.i self.con

:[15]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[16]
push.v self.y
pushi.e 480
cmp.i.v GTE
bf [end]

:[17]
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.con
push.v self.terminate
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[end]