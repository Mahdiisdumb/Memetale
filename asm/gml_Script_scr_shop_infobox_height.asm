.localvar 0 arguments

:[0]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [3]

:[1]
pushi.e 83
conv.i.v
ret.v

:[2]
b [end]

:[3]
pushi.e 80
conv.i.v
ret.v

:[end]