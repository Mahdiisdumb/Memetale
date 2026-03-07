.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.s "music/dununnn.ogg"@2655
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.shock
push.s "music/predummy.ogg"@2656
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.predummy
pushi.e 1057
pop.v.i self.dummy
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.curview

:[end]