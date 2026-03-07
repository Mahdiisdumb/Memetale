.localvar 0 arguments

:[0]
push.v self.hurtsies
pushi.e 2
cmp.i.v EQ
bf [5]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [4]

:[3]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.hurtsies

:[5]
push.v self.hurtsies
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.mypart1
conv.v.i
pushenv [8]

:[7]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]
pushi.e 2
pop.v.i self.hurtsies
pushi.e 25
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[9]
pushi.e -1
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 30
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[end]