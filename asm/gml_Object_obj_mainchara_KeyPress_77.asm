.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.m_override
pushi.e 1
add.i.v
pop.v.v self.m_override
push.v self.m_override
pushi.e 5
cmp.i.v GTE
bf [end]

:[2]
pushi.e 50
pushi.e -5
pushi.e 26
pop.v.i [array]global.flag

:[end]