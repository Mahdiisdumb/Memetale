.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.yy
pushi.e 0
pop.v.i self.xx

:[1]
push.v self.yy
pushi.e 5
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.dodraw
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.i.v
push.d 2.8
conv.d.v
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.snowy
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.snowx
call.i draw_circle(argc=4)
popz.v

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.snowy
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.snowx
call.i collision_circle(argc=6)
pushi.e -4
cmp.i.v NEQ
bf [6]

:[5]
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 2
add.i.v
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.moveme

:[6]
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
pushi.e 1
cmp.i.v GT
bf [23]

:[7]
push.v 1576.moving
pushi.e 1
cmp.i.v EQ
bf [22]

:[8]
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 64
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e -1
pushi.e -5
pushi.e 64
pop.v.i [array]global.flag

:[13]
push.v 1576.bbox_left
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.snowx
cmp.v.v GT
bf [15]

:[14]
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.snowx
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
sub.v.v
pop.i.v [array]self.snowx

:[15]
push.v 1576.bbox_right
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.snowx
cmp.v.v LT
bf [17]

:[16]
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.snowx
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
add.v.v
pop.i.v [array]self.snowx

:[17]
push.v 1576.bbox_top
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.snowy
cmp.v.v GT
bf [19]

:[18]
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.snowy
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
sub.v.v
pop.i.v [array]self.snowy

:[19]
push.v 1576.bbox_bottom
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.snowy
cmp.v.v LT
bf [21]

:[20]
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.snowy
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
add.v.v
pop.i.v [array]self.snowy

:[21]
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.snowx
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
call.i random(argc=1)
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.i.v [array]self.snowx
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.snowy
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
call.i random(argc=1)
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
push.v [array]self.moveme
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.i.v [array]self.snowy

:[22]
pushi.e -1
push.v self.xx
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.yy
conv.v.i
chkindex.e
add.i.i
dup.i 1
push.v [array]self.moveme
pushi.e 1
sub.i.v
pop.i.v [array]self.moveme

:[23]
push.v self.xx
pushi.e 4
cmp.i.v EQ
bf [25]

:[24]
pushi.e -1
pop.v.i self.xx
push.v self.yy
pushi.e 1
add.i.v
pop.v.v self.yy

:[25]
push.v self.xx
pushi.e 1
add.i.v
pop.v.v self.xx
b [1]

:[end]