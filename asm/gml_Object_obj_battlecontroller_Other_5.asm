.localvar 0 arguments

:[0]
pushi.e 8
pushglb.v global.lv
pushi.e 2
mul.i.v
add.v.i
pop.v.v global.at
pushi.e 9
pushglb.v global.lv
pushi.e 4
conv.i.d
div.d.v
call.i ceil(argc=1)
add.v.i
pop.v.v global.df
push.v self.tempspd
pop.v.v global.sp
pushi.e 0
pushi.e -5
pushi.e 78
pop.v.i [array]global.flag

:[end]