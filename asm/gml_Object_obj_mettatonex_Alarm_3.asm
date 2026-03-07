.localvar 0 arguments

:[0]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.pause
pushi.e 0
cmp.i.v LTE
bf [12]

:[1]
pushi.e 190
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.takedamage
pop.v.v global.damage
push.v self.dmgwriter
conv.v.i
pushenv [3]

:[2]
pushglb.v global.damage
pop.v.v self.dmg

:[3]
popenv [2]
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
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [5]

:[4]
push.v self.turns
pushi.e 12
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 11
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
b [9]

:[8]
pushi.e 2
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause

:[9]
pushi.e 403
pushenv [11]

:[10]
pushi.e 4
pop.v.i self.curtype
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
popenv [10]

:[12]
push.v self.sha
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.x
pop.v.v self.sha

:[14]
push.v self.sha
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [16]

:[15]
push.v self.shudder
pushi.e 1
add.i.v
neg.v
pop.v.v self.shudder
b [17]

:[16]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[17]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.sha
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
exit.i

:[19]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]