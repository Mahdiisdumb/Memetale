.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.stage
pushi.e 0
pop.v.i self.icex
push.d 0.334
pop.v.d self.image_speed
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [2]

:[1]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]