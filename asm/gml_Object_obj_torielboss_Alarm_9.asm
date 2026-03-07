.localvar 0 arguments

:[0]
push.v self.blconwriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
b [6]

:[3]
pushi.e -1
pop.v.i self.destroyed
push.v self.blcon
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 603
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.tr
pushi.e 0
pop.v.i self.visible
pushi.e -20
pop.v.i self.conversation

:[6]
b [end]

:[7]
pushi.e 2
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[end]