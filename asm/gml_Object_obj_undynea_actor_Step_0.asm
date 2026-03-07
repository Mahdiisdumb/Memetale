.localvar 0 arguments

:[0]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [11]

:[3]
pushi.e 0
pop.v.i self.myinteract
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[5]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [11]

:[6]
push.d 0.2
pop.v.d self.image_speed
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bt [8]

:[7]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 16
conv.i.v
call.i snd_play(argc=1)
popz.v

:[11]
push.v self.fun
pushi.e 3
cmp.i.v EQ
bf [17]

:[12]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bt [14]

:[13]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
pushi.e 16
conv.i.v
call.i snd_play(argc=1)
popz.v

:[17]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1557
pop.v.i self.sprite_index

:[19]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [end]

:[20]
pushi.e 1553
pop.v.i self.sprite_index

:[end]