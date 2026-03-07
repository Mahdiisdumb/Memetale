.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.skip
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.con
pushi.e 1683
conv.i.v
pushi.e 16
conv.i.v
pushi.e 116
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ahit
pushi.e 250
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.con

:[4]
push.v self.skip
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 85
pop.v.i self.con

:[6]
pushi.e 0
pop.v.i self.sidecon
pushi.e 0
pop.v.i self.gowhite
pushi.e 0
pop.v.i self.wht
push.i 437827483
pop.v.i self.tor
push.i 437827483
pop.v.i self.und
push.i 437827483
pop.v.i self.sans
push.i 437827483
pop.v.i self.asg
push.i 437827483
pop.v.i self.al
push.i 437827483
pop.v.i self.pap
pushi.e 0
pop.v.i self.trickblack
pushi.e 0
pop.v.i self.lastwhite
pushi.e 0
pop.v.i self.border_d
pushi.e 0
pop.v.i self.ting_s
pushi.e 1
pop.v.i self.skiptext
pushi.e 0
pop.v.i self.leg_r
pushi.e 0
pop.v.i self.leg
pushbltn.v self.room_width
pushi.e 200
add.i.v
pop.v.v self.legx

:[end]