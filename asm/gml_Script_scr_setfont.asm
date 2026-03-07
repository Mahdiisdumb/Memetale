.localvar 0 arguments
.localvar 1 newfont 939

:[0]
pushbltn.v self.argument0
pop.v.v local.newfont
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [7]

:[1]
pushloc.v local.newfont
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 13
pop.v.i local.newfont

:[3]
pushloc.v local.newfont
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 14
pop.v.i local.newfont

:[5]
pushloc.v local.newfont
pushi.e 4
cmp.i.v EQ
bf [7]

:[6]
pushi.e 17
pop.v.i local.newfont

:[7]
pushloc.v local.newfont
call.i draw_set_font(argc=1)
popz.v

:[end]