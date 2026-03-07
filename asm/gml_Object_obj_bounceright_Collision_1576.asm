.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 1535.bounce
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 1
pop.v.i 1535.bounce
pushi.e 1
pop.v.i global.phasing
pushi.e 1
pop.v.i self.con
push.d 0.334
pop.v.d 1576.image_speed
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
push.v self.id
pop.v.v 1576.ideal
pushi.e 1576
pushenv [7]

:[6]
push.v self.ideal
conv.v.i
push.v [stacktop]self.y
pushi.e 15
sub.i.v
push.v self.ideal
conv.v.i
push.v [stacktop]self.x
call.i scr_getideal(argc=2)
popz.v

:[7]
popenv [6]

:[8]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [11]

:[9]
push.v 1535.bounce
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i 1535.bounce
pushi.e 1
pop.v.i global.phasing
pushi.e 4
pop.v.i self.con
push.d 0.334
pop.v.d 1576.image_speed
pushi.e 1
pop.v.i global.interact
push.v self.id
pop.v.v 1576.ideal

:[14]
pushi.e 3
pop.v.i 1535.btime

:[end]