.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 1
cmp.i.v NEQ
bf [8]

:[1]
push.v self.mypart1
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
push.v self.mypart2
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 190
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.takedamage
pop.v.v global.damage
push.v self.dmgwriter
conv.v.i
pushenv [7]

:[6]
pushglb.v global.damage
pop.v.v self.dmg

:[7]
popenv [6]
pushi.e 1
pop.v.i self.image_index
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 11
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[8]
push.v self.sha
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.x
pop.v.v self.sha

:[10]
push.v self.sha
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
push.v self.shudder
pushi.e 1
add.i.v
neg.v
pop.v.v self.shudder
b [13]

:[12]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[13]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.sha
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[15]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]