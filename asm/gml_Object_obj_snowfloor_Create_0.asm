.localvar 0 arguments

:[0]
push.v self.x
push.d 2.2
add.d.v
pop.v.v self.x
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y
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
push.v self.x
push.v self.xx
pushi.e 4
mul.i.v
add.v.v
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
pop.v.v [array]self.snowx
push.v self.xx
pushi.e 4
cmp.i.v EQ
bf [4]

:[3]
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
push.d 0.2
sub.d.v
pop.i.v [array]self.snowx

:[4]
push.v self.y
push.v self.yy
pushi.e 4
mul.i.v
add.v.v
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
pop.v.v [array]self.snowy
pushi.e 1
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
pop.v.i [array]self.dodraw
pushi.e 1
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
pop.v.i [array]self.moveme
push.v self.xx
pushi.e 4
cmp.i.v EQ
bf [6]

:[5]
pushi.e -1
pop.v.i self.xx
push.v self.yy
pushi.e 1
add.i.v
pop.v.v self.yy

:[6]
push.v self.xx
pushi.e 1
add.i.v
pop.v.v self.xx
b [1]

:[end]