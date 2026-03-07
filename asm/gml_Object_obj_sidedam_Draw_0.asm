.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [21]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.con
push.v self.wait
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[3]
push.v self.con
pushi.e 2
cmp.i.v LT
bf [13]

:[4]
push.v self.eo
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[6]
push.v self.eo
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i snd_play(argc=1)
popz.v

:[8]
push.v self.eo
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[10]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 12
add.i.v
push.v self.eo
pushi.e 544
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.eo
pushi.e 1
add.i.v
pop.v.v self.eo
push.v self.eo
pushi.e 2
cmp.i.v GT
bf [12]

:[11]
pushi.e 0
pop.v.i self.eo

:[12]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 5
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.len
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 4
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.len
add.v.v
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 6
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 6
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 3
pop.v.i self.con
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [19]

:[16]
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [18]

:[17]
pushi.e 472
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.len
pushi.e 6
sub.i.v
call.i random(argc=1)
add.v.v
pushi.e 6
sub.i.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [17]

:[18]
popz.i

:[19]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.con
push.v self.wait
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[24]
push.v self.con
pushi.e 2
cmp.i.v LT
bf [34]

:[25]
push.v self.eo
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[27]
push.v self.eo
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i snd_play(argc=1)
popz.v

:[29]
push.v self.eo
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[31]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 38
sub.i.v
push.v self.eo
pushi.e 544
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.eo
pushi.e 1
add.i.v
pop.v.v self.eo
push.v self.eo
pushi.e 2
cmp.i.v GT
bf [33]

:[32]
pushi.e 0
pop.v.i self.eo

:[33]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 5
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.len
sub.v.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 5
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 4
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.len
sub.v.v
pushi.e 1
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 4
sub.i.v
call.i draw_rectangle(argc=5)
popz.v

:[34]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
pushi.e 3
pop.v.i self.con
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [40]

:[37]
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [39]

:[38]
pushi.e 472
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.len
pushi.e 6
add.i.v
call.i random(argc=1)
sub.v.v
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [38]

:[39]
popz.i

:[40]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[end]