.localvar 0 arguments

:[0]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [4]

:[1]
pushi.e 20
pop.v.i self.con
pushi.e 190
conv.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
pushi.e 1
pop.v.i global.damage
push.v self.dmgwriter
conv.v.i
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.dmg

:[3]
popenv [2]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 11
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

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
bf [11]

:[10]
pushi.e 0
pop.v.i self.sha
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[11]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]