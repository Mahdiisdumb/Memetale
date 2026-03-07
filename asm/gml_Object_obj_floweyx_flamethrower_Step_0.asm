.localvar 0 arguments

:[0]
push.v self.extend
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_index
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[3]
push.v self.extend
pushi.e 2
cmp.i.v EQ
bf [6]

:[4]
push.v self.image_index
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[6]
push.v self.y
pushi.e 190
cmp.i.v GT
bf [8]

:[7]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.vspeed
push.v self.y
pop.v.v self.yanchor
push.v self.x
pop.v.v self.xanchor
pushi.e 1
pop.v.i self.anchor

:[11]
push.v self.done
pushi.e 0
cmp.i.v EQ
bf [16]

:[12]
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [14]

:[13]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
b [16]

:[14]
pushi.e 1
pop.v.i self.done
pushi.e 2
pop.v.i self.con
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 25
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [19]

:[17]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [18]

:[18]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [19]

:[19]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[20]
push.v self.extend
pushi.e 2
cmp.i.v NEQ
bf [22]

:[21]
pushi.e 121
conv.i.v
call.i snd_play(argc=1)
popz.v

:[22]
pushi.e 2
pop.v.i self.extend
pushi.e -5
pop.v.i self.vspeed
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.image_xscale
push.d 0.1
cmp.d.v GT
bf [24]

:[23]
push.v self.image_xscale
push.d 0.1
sub.d.v
pop.v.v self.image_xscale

:[24]
push.v self.y
pushi.e 150
cmp.i.v LTE
bf [end]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]