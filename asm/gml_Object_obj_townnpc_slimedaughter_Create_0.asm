.localvar 0 arguments

:[0]
pushi.e 1306
pop.v.i self.dsprite
pushi.e 1306
pop.v.i self.usprite
pushi.e 1306
pop.v.i self.lsprite
pushi.e 1306
pop.v.i self.rsprite
pushi.e 1306
pop.v.i self.dtsprite
pushi.e 1306
pop.v.i self.utsprite
pushi.e 1306
pop.v.i self.ltsprite
pushi.e 1306
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
call.i scr_deaddog(argc=0)
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [7]

:[6]
call.i scr_deaddog(argc=0)
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]