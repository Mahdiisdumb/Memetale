.localvar 0 arguments
.localvar 1 n 6100

:[0]
pushglb.v global.typer
call.i SCR_TEXTTYPE(argc=1)
popz.v
push.v self.x
call.i round(argc=1)
pop.v.v self.x
push.v self.y
call.i round(argc=1)
pop.v.v self.y
push.v self.writingx
call.i round(argc=1)
pop.v.v self.writingx
push.v self.writingy
call.i round(argc=1)
pop.v.v self.writingy
pushi.e 0
pop.v.i self.stringno
pushi.e 1
pop.v.i self.stringpos
pushi.e 0
pop.v.i self.halt
pushi.e 0
pop.v.i self.dfy
pushi.e 1
pop.v.i self.sound_enable
pushi.e 0
pop.v.i local.n

:[1]
pushi.e -5
pushloc.v local.n
conv.v.i
push.v [array]global.msg
push.s "%%%"@16
cmp.s.v NEQ
bf [3]

:[2]
pushi.e -5
pushloc.v local.n
conv.v.i
push.v [array]global.msg
pushi.e -1
pushloc.v local.n
conv.v.i
pop.v.v [array]self.mystring
push.v local.n
push.e 1
add.i.v
pop.v.v local.n
b [1]

:[3]
pushi.e -1
pushi.e 0
push.v [array]self.mystring
call.i scr_replace_buttons_pc(argc=1)
pop.v.v self.originalstring
push.v self.textspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]