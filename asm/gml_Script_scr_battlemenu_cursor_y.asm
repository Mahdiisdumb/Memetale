.localvar 0 arguments
.localvar 1 line 910

:[0]
pushbltn.v self.argument0
pop.v.v local.line
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 27
add.i.v
pushloc.v local.line
pushi.e 36
mul.i.v
add.v.v
ret.v

:[2]
b [end]

:[3]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 28
add.i.v
pushloc.v local.line
pushi.e 32
mul.i.v
add.v.v
ret.v

:[end]