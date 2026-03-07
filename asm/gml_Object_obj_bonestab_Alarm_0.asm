.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.con
push.v self.dir
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
push.v self.dir
pushi.e 3
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 688
pop.v.i self.sprite_index

:[5]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bt [7]

:[6]
push.v self.dir
pushi.e 2
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 686
pop.v.i self.sprite_index

:[10]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bt [12]

:[11]
push.v self.dir
pushi.e 2
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.x

:[15]
push.v self.dir
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pop.v.v self.x

:[17]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.x

:[19]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.y

:[21]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bt [23]

:[22]
push.v self.dir
pushi.e 3
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.y

:[26]
push.v self.dir
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pop.v.v self.y

:[28]
push.v self.y
pop.v.v self.ideal_y
push.v self.x
pop.v.v self.ideal_x
push.v self.warning
pushi.e 4
cmp.i.v GT
bf [end]

:[29]
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]