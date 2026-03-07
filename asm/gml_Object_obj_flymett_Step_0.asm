.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.y
push.v self.movemode
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner2
pushi.e 1
add.i.v
pop.v.v self.siner2
push.v self.x
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
pop.v.v self.x

:[2]
push.v self.overmode
pushi.e 1
cmp.i.v EQ
bf [9]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v self.movemode
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[8]
pushi.e 2
pop.v.i self.con

:[9]
push.v self.overmode
pushi.e 2
cmp.i.v EQ
bf [end]

:[10]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.con

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
pushi.e 40
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v self.movemode
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 40
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[15]
pushi.e 2
pop.v.i self.con

:[end]