.localvar 0 arguments

:[0]
push.s "\\TS \\F0 \\E"@5015
pushbltn.v self.argument1
call.i string(argc=1)
add.v.s
push.s " \\F3 \\Ts %"@5016
add.s.v
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.v [array]global.msg

:[end]