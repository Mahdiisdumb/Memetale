.localvar 0 arguments

:[0]
push.v self.justdoit
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 2
pop.v.i self.justdoit
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.drawamt

:[5]
push.v self.justdoit
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.justdoit

:[7]
push.v self.justdoit
pushi.e 6
cmp.i.v EQ
bf [9]

:[8]
pushi.e 7
pop.v.i self.justdoit
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.justdoit
pushi.e 8
cmp.i.v EQ
bf [end]

:[10]
pushi.e 0
pop.v.i global.interact
pushi.e 9
pop.v.i self.justdoit
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[end]