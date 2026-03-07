.localvar 0 arguments

:[0]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [64]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 1116
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [64]

:[3]
pushi.e 0
pop.v.i self.h
pushi.e 0
pop.v.i self.v
push.v self.i
pushi.e 1116
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.me
push.v self.me
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
push.v self.me
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yy
pushi.e 1
pop.v.i self.j
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.rx
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.lx
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.ux
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.dx
pushi.e 0
pop.v.i self.doodly
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [29]

:[4]
pushi.e 0
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.lx
pushi.e 0
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.dx
pushi.e 0
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.rx
pushi.e 0
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.ux
pushi.e 1116
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 2
sub.i.v
push.v self.doodly
sub.v.v
call.i instance_position(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.l
pushi.e 1116
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 22
add.i.v
push.v self.doodly
add.v.v
call.i instance_position(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.r
pushi.e 1116
conv.i.v
push.v self.yy
pushi.e 2
sub.i.v
push.v self.doodly
sub.v.v
push.v self.xx
call.i instance_position(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.u
pushi.e 1116
conv.i.v
push.v self.yy
pushi.e 22
add.i.v
push.v self.doodly
add.v.v
push.v self.xx
call.i instance_position(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.d
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.l
pushi.e -4
cmp.i.v NEQ
bf [6]

:[5]
pushi.e -1
push.v self.j
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.lx
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [10]

:[8]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.l
conv.v.i
push.v [stacktop]self.using
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
push.v self.h
pushi.e 1
add.i.v
pop.v.v self.h
pushi.e 1
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.lx

:[10]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.r
pushi.e -4
cmp.i.v NEQ
bf [12]

:[11]
pushi.e -1
push.v self.j
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.rx
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [16]

:[14]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.r
conv.v.i
push.v [stacktop]self.using
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
push.v self.h
pushi.e 1
add.i.v
pop.v.v self.h
pushi.e 1
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.rx

:[16]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.u
pushi.e -4
cmp.i.v NEQ
bf [18]

:[17]
pushi.e -1
push.v self.j
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.ux
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [22]

:[20]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.u
conv.v.i
push.v [stacktop]self.using
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.v self.v
pushi.e 1
add.i.v
pop.v.v self.v
pushi.e 1
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.ux

:[22]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.d
pushi.e -4
cmp.i.v NEQ
bf [24]

:[23]
pushi.e -1
push.v self.j
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.dx
pushi.e 1
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [28]

:[26]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.d
conv.v.i
push.v [stacktop]self.using
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
push.v self.v
pushi.e 1
add.i.v
pop.v.v self.v
pushi.e 1
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.dx

:[28]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.doodly
pushi.e 20
add.i.v
pop.v.v self.doodly
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[29]
popz.i
push.v self.v
pushi.e 3
cmp.i.v GTE
bf [31]

:[30]
push.v self.me
conv.v.i
push.v [stacktop]self.using
pushi.e 3
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [46]

:[33]
pushi.e 90
pop.v.i self.won
pushi.e 1
pop.v.i self.n
pushi.e 5
push.v self.me
conv.v.i
pop.v.i [stacktop]self.using
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [45]

:[34]
pushi.e -1
push.v self.n
conv.v.i
push.v [array]self.u
pushi.e -4
cmp.i.v NEQ
bf [36]

:[35]
pushi.e -1
push.v self.n
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.ux
pushi.e 1
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 5
pushi.e -1
push.v self.n
conv.v.i
push.v [array]self.u
conv.v.i
pop.v.i [stacktop]self.using

:[39]
pushi.e -1
push.v self.n
conv.v.i
push.v [array]self.d
pushi.e -4
cmp.i.v NEQ
bf [41]

:[40]
pushi.e -1
push.v self.n
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.dx
pushi.e 1
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 5
pushi.e -1
push.v self.n
conv.v.i
push.v [array]self.d
conv.v.i
pop.v.i [stacktop]self.using

:[44]
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [34]

:[45]
popz.i

:[46]
push.v self.h
pushi.e 3
cmp.i.v GTE
bf [48]

:[47]
push.v self.me
conv.v.i
push.v [stacktop]self.using
pushi.e 3
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [63]

:[50]
pushi.e 90
pop.v.i self.won
pushi.e 1
pop.v.i self.n
pushi.e 5
push.v self.me
conv.v.i
pop.v.i [stacktop]self.using
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [62]

:[51]
pushi.e -1
push.v self.n
conv.v.i
push.v [array]self.r
pushi.e -4
cmp.i.v NEQ
bf [53]

:[52]
pushi.e -1
push.v self.n
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.rx
pushi.e 1
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 5
pushi.e -1
push.v self.n
conv.v.i
push.v [array]self.r
conv.v.i
pop.v.i [stacktop]self.using

:[56]
pushi.e -1
push.v self.n
conv.v.i
push.v [array]self.l
pushi.e -4
cmp.i.v NEQ
bf [58]

:[57]
pushi.e -1
push.v self.n
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.lx
pushi.e 1
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 5
pushi.e -1
push.v self.n
conv.v.i
push.v [array]self.l
conv.v.i
pop.v.i [stacktop]self.using

:[61]
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [51]

:[62]
popz.i

:[63]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[64]
push.v self.won
pushi.e 9999
cmp.i.v EQ
bf [end]

:[65]
push.v self.won
pushi.e 2
cmp.i.v EQ
bf [67]

:[66]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 1
pop.v.i global.interact
pushi.e 97
pop.v.i self.won
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.vol1
push.v self.vol1
pop.v.v self.vol2
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[70]
push.v self.won
pushi.e 97
cmp.i.v EQ
bf [73]

:[71]
push.v self.vol2
push.d 0.02
sub.d.v
pop.v.v self.vol2
push.v self.vol2
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.vol2
push.d 0.04
cmp.d.v LT
bf [73]

:[72]
pushi.e 0
pop.v.i self.vol2
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 98
pop.v.i self.won

:[73]
push.v self.won
pushi.e 98
cmp.i.v EQ
bf [75]

:[74]
pushi.e 26
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "* (You hear a small voice.)/"@50340
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "* Congratulations!/"@25594
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "* What's wrong with you!/%%"@50341
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 99
pop.v.i self.won

:[75]
push.v self.won
pushi.e 99
cmp.i.v EQ
bf [77]

:[76]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [end]

:[79]
pushi.e 0
pop.v.i global.interact
push.v self.vol1
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 100
pop.v.i self.won

:[end]