.localvar 0 arguments

:[0]
push.v self.temno
pushi.e 8
cmp.i.v LT
bf [28]

:[1]
push.v self.temno
pushi.e 1
add.i.v
pop.v.v self.temno
push.v self.x
pushi.e -1
push.v self.temno
conv.v.i
pop.v.v [array]self.temx1
push.v self.y
pushi.e -1
push.v self.temno
conv.v.i
pop.v.v [array]self.Mahdii2
push.v self.x
push.v 744.x
pushi.e 6
add.i.v
sub.v.v
pop.v.v self.xdif
push.v self.y
push.v 744.y
pushi.e 6
add.i.v
sub.v.v
pop.v.v self.ydif
push.v self.xdif
call.i abs(argc=1)
push.v self.ydif
call.i abs(argc=1)
sub.v.v
pop.v.v self.final
push.v self.final
pushi.e 0
cmp.i.v LTE
bf [6]

:[2]
push.v self.ydif
pushi.e 0
cmp.i.v GTE
bf [4]

:[3]
pushi.e 90
pop.v.i self.direction
b [5]

:[4]
pushi.e 270
pop.v.i self.direction

:[5]
b [9]

:[6]
push.v self.xdif
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
pushi.e 180
pop.v.i self.direction
b [9]

:[8]
pushi.e 0
pop.v.i self.direction

:[9]
push.v self.direction
pushi.e -1
push.v self.temno
conv.v.i
pop.v.v [array]self.temdir
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temdir
pushi.e -1
push.v self.temno
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.temdir
pushi.e 180
add.i.v
cmp.v.v EQ
bt [11]

:[10]
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temdir
pushi.e -1
push.v self.temno
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.temdir
pushi.e 180
sub.i.v
cmp.v.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction
pushi.e -1
push.v self.temno
conv.v.i
dup.i 1
push.v [array]self.temdir
pushi.e 90
sub.i.v
pop.i.v [array]self.temdir

:[14]
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temdir
pushi.e -1
push.v self.temno
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.temdir
cmp.v.v EQ
bf [16]

:[15]
pushi.e 0
pushi.e -1
push.v self.temno
conv.v.i
pop.v.i [array]self.temx1
push.v self.temno
pushi.e 1
sub.i.v
pop.v.v self.temno

:[16]
push.v self.temno
pushi.e 0
cmp.i.v GT
bf [27]

:[17]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bf [19]

:[18]
pushi.e -1
push.v self.temno
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.temdir
pushi.e 180
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.x
pushi.e -1
push.v self.temno
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self.temx2

:[22]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [24]

:[23]
pushi.e -1
push.v self.temno
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.temdir
pushi.e 90
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.v self.y
pushi.e -1
push.v self.temno
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self.temy2

:[27]
pushi.e 60
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e -1
push.v self.temno
conv.v.i
pop.v.v [array]self.temtim
b [end]

:[28]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]