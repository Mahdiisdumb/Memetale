.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.talkedto
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.shsh
push.v self.x
pushi.e 340
cmp.i.v GT
bf [2]

:[1]
push.v self.x
pushi.e 410
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 90
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[end]