.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
push.v self.takedamage
sub.v.v
pushi.e 500
cmp.i.v LTE
bf [12]

:[1]
pushi.e 190
conv.i.v
push.v self.y
pushi.e 150
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 30
sub.i.v
pop.v.v global.fivedamage
pushglb.v global.fivedamage
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
pushi.e 1
pop.v.i global.fivedamage

:[3]
push.v self.dmgwriter
conv.v.i
pushenv [5]

:[4]
pushglb.v global.fivedamage
pop.v.v self.dmg

:[5]
popenv [4]
pushi.e 494
conv.i.v
pushi.e 46
conv.i.v
pushi.e 128
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i 484.fade
pushi.e 485
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.mypart1
conv.v.i
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
pushi.e 490
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[12]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.pause
pushi.e 1
cmp.i.v NEQ
bf [16]

:[13]
pushi.e 190
conv.i.v
push.v self.y
pushi.e 150
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.takedamage
pop.v.v global.damage
push.v self.dmgwriter
conv.v.i
pushenv [15]

:[14]
pushglb.v global.damage
pop.v.v self.dmg

:[15]
popenv [14]
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

:[16]
push.v self.sha
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.v self.x
pop.v.v self.sha

:[18]
push.v self.sha
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
push.v self.shudder
pushi.e 1
add.i.v
neg.v
pop.v.v self.shudder
b [21]

:[20]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[21]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.sha
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[23]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]