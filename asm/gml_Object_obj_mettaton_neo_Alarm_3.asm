.localvar 0 arguments

:[0]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.pause
pushi.e 1
cmp.i.v NEQ
bf [8]

:[1]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 190
conv.i.v
push.v self.y
pushi.e 200
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.takedamage
pop.v.v global.damage
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 4000
add.i.v
pushi.e 3289
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.v
pop.v.v global.damage
call.i scr_murderlv(argc=0)
pushi.e 15
cmp.i.v GTE
bf [3]

:[2]
push.i 900000
push.i 99999
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[3]
push.v self.dmgwriter
conv.v.i
pushenv [5]

:[4]
pushglb.v global.damage
pop.v.v self.dmg

:[5]
popenv [4]
pushi.e 1675
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shk
push.v self.mypart1
push.v self.shk
conv.v.i
pop.v.v [stacktop]self.obj
push.v self.mypart1
conv.v.i
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.burston
pushi.e 6
pop.v.i global.faceemotion

:[7]
popenv [6]
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