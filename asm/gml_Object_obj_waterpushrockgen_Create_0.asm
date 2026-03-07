.localvar 0 arguments

:[0]
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.falling
pushi.e 0
pop.v.i self.fell
pushi.e 0
pop.v.i self.rate
pushi.e 0
pop.v.i self.colliding
pushi.e 90
pop.v.i self.rate_time
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [2]

:[1]
pushi.e 220
pop.v.i self.x1
pushi.e 180
pop.v.i self.y1
pushi.e 380
pop.v.i self.x2
pushi.e 260
pop.v.i self.y2
pushi.e 283
pop.v.i self.triggery

:[2]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [4]

:[3]
pushi.e 80
pop.v.i self.x1
pushi.e 240
pop.v.i self.x2
pushi.e 180
pop.v.i self.y1
pushi.e 200
pop.v.i self.y2
pushi.e 263
pop.v.i self.triggery

:[4]
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [6]

:[5]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]