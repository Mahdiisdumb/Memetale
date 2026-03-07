.localvar 0 arguments

:[0]
push.l 123981239812931
pop.v.l self.gr
pushi.e 0
pop.v.i self.drawngr
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.rot
pushi.e 0
pop.v.i self.pattern
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.moved
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.xx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.yy
pushi.e 0
pop.v.i self.factor
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.draedmode
pushglb.v global.osflavor
pushi.e 3
cmp.i.v GTE
bf [end]

:[1]
pushi.e 1
pop.v.i self.draedmode

:[end]