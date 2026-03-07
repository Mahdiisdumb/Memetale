.localvar 0 arguments

:[0]
pushi.e 12
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.zap
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i scr_insideborder(argc=0)
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 365
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i instance_create(argc=3)
pop.v.v self.cross
push.v self.dmg
push.v self.cross
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 168
pop.v.i self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [end]

:[5]
pushi.e 1
push.v self.cross
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]