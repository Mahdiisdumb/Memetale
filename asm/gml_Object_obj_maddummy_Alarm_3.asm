.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 1
cmp.i.v NEQ
bf [4]

:[1]
pushi.e 1
pop.v.i self.image_index
push.v self.mypart1
conv.v.i
pushenv [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 99
pop.v.i self.mode

:[3]
popenv [2]

:[4]
push.v self.sha
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.x
pop.v.v self.sha

:[6]
push.v self.sha
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v self.shudder
pushi.e 1
add.i.v
neg.v
pop.v.v self.shudder
b [9]

:[8]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[9]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [16]

:[10]
pushi.e 0
pop.v.i self.sha
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.con
pushi.e 1
cmp.i.v GT
bf [12]

:[11]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
b [13]

:[12]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 1
pop.v.i self.con
pushi.e -1
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.hurtsies
pushi.e 80
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[13]
push.v self.mypart1
conv.v.i
pushenv [15]

:[14]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
popenv [14]
exit.i

:[16]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]