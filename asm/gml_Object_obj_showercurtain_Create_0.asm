.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.anim
push.d 0.1664
pop.v.d self.animspeed
pushi.e 0
pop.v.i self.drawkey
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.mode
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.mode
pushi.e 1
pop.v.i self.drawkey
push.d 0.3
pop.v.d self.size

:[2]
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [4]

:[3]
pushi.e 2
pop.v.i self.mode
pushi.e 0
pop.v.i self.drawkey
push.d 0.3
pop.v.d self.size
pushi.e 10
pop.v.i self.con

:[4]
pushi.e 1
pop.v.i self.size
push.v 1576.y
pop.v.v self.remy
pushi.e 0
pop.v.i self.onoff

:[end]