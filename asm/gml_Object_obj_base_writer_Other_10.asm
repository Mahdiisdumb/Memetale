.localvar 0 arguments

:[0]
push.v self.halt
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.stringno
push.e 1
add.i.v
pop.v.v self.stringno
pushi.e -1
push.v self.stringno
conv.v.i
push.v [array]self.mystring
call.i scr_replace_buttons_pc(argc=1)
pop.v.v self.originalstring
pushi.e 0
pop.v.i self.stringpos
pushi.e 0
pop.v.i self.halt
push.v self.textspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
b [end]

:[2]
push.v self.halt
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
push.v self.halt
pushi.e 4
cmp.i.v EQ
bf [end]

:[5]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]