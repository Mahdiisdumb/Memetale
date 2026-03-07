.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.ttype
pushi.e 0
pop.v.i self.yadd
pushi.e 3
pop.v.i self.yadd2
pushi.e 0
pop.v.i self.yz2
push.v self.ttype
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.ttype
pushi.e 3
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.type
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.xmid
pushi.e 100
pop.v.i self.xlen
pushi.e 3
pop.v.i self.yamt
pushi.e 40
pop.v.i self.yspace
pushi.e 2
pop.v.i self.yno
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
add.i.v
pop.v.v self.yzero
pushi.e 1
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.moving
pushi.e 0
pop.v.i self.space
pushi.e 3
pop.v.i self.yadd2

:[5]
push.v self.ttype
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.type
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.xmid
pushi.e 100
pop.v.i self.xlen
pushi.e 7
pop.v.i self.yamt
pushi.e 40
pop.v.i self.yspace
pushi.e 2
pop.v.i self.yno
pushi.e 100
pop.v.i self.yzero
pushi.e 1
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.moving
pushi.e 0
pop.v.i self.space
pushi.e 3
pop.v.i self.yadd

:[7]
pushi.e 0
pop.v.i self.yoff

:[end]