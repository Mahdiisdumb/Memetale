.localvar 0 arguments

:[0]
push.v global.msc
pushi.e 1
add.i.v
pop.v.v global.msc
pushi.e 0
pop.v.i self.stringno
pushi.e 1
pop.v.i self.stringpos
push.v self.writingx
call.i round(argc=1)
pop.v.v self.writingx
push.v self.writingy
call.i round(argc=1)
pop.v.v self.writingy
push.v self.writingx
pop.v.v self.myx
push.v self.writingy
pop.v.v self.myy
pushglb.v global.msc
pushi.e 1
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
pop.v.i self.n

:[1]
pushi.e -5
push.v self.n
conv.v.i
push.v [array]global.msg
push.s "%%%"@16
cmp.s.v NEQ
bf [3]

:[2]
pushi.e -5
push.v self.n
conv.v.i
push.v [array]global.msg
pushi.e -1
push.v self.n
conv.v.i
pop.v.v [array]self.mystring
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n
b [1]

:[3]
pushi.e -1
pushi.e 0
push.v [array]self.mystring
call.i scr_replace_buttons_pc(argc=1)
pop.v.v self.originalstring
pushi.e 0
pop.v.i self.halt
push.v self.textspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]