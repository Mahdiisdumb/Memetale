.localvar 0 arguments

:[0]
push.v self.mypart1
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.got
pushi.e 1
cmp.i.v EQ
bf [10]

:[2]
push.v self.mypart1
conv.v.i
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.pause

:[4]
popenv [3]
push.v self.defuse
pushi.e 0
cmp.i.v EQ
bf [10]

:[5]
push.v self.mypart1
conv.v.i
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.defuse

:[7]
popenv [6]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.defuse
push.v self.mypart1
conv.v.i
pushenv [9]

:[8]
pushi.e 8
pop.v.i self.shudder

:[9]
popenv [8]

:[10]
push.v self.mypart1
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
push.v self.myself
push.v self.mypart1
conv.v.i
pop.v.v [stacktop]self.boss

:[12]
push.v self.mypart1
conv.v.i
pushenv [20]

:[13]
push.v self.sha
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.x
pop.v.v self.sha

:[15]
push.v self.sha
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [17]

:[16]
push.v self.shudder
pushi.e 1
add.i.v
neg.v
pop.v.v self.shudder
b [18]

:[17]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[18]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.sha
pushi.e 2
pushi.e -5
push.v self.boss
conv.v.i
pop.v.i [array]global.hurtanim
popenv <drop>
exit.i

:[20]
popenv [13]
push.v self.mypart1
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[21]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.shudder
pushi.e 0
cmp.i.v NEQ
bf [end]

:[22]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]