.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
call.i scr_npc_anim(argc=0)
popz.v
push.v self.w
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 17
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.w

:[2]
push.v self.w
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 4
pop.v.i self.w
pushi.e 36
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.w
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
pushi.e -4
pop.v.i self.hspeed
pushi.e 6
pop.v.i self.w
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.w
pushi.e 7
cmp.i.v EQ
bf [end]

:[7]
pushi.e 8
pop.v.i self.w
pushi.e 0
pop.v.i self.hspeed

:[end]