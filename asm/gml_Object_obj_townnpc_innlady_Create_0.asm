.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.jtext
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.conversation
pushi.e -5
pushi.e 73
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
pop.v.i self.conversation
pushi.e 1
pop.v.i global.interact
pushi.e 15
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[2]
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]