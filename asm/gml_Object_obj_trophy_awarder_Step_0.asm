.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 7
cmp.i.v EQ
bf [4]

:[1]
pushi.e 149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.s "ruins"@51089
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[3]
b [end]

:[4]
pushbltn.v self.room
pushi.e 18
cmp.i.v EQ
bf [11]

:[5]
pushi.e 149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.v 1576.x
pushi.e 100
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "mouse"@51090
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[10]
b [end]

:[11]
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bf [18]

:[12]
pushi.e 149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [14]

:[13]
push.v 1576.x
pushi.e 130
cmp.i.v GTE
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.s "spaghetti"@51091
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[17]
b [end]

:[18]
pushbltn.v self.room
pushi.e 82
cmp.i.v EQ
bf [25]

:[19]
pushi.e 149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[20]
pushglb.v global.screen_border_dynamic_fade_level
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.s "water"@50615
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[24]
b [end]

:[25]
pushbltn.v self.room
pushi.e 144
cmp.i.v EQ
bf [29]

:[26]
pushi.e 149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [28]

:[27]
push.s "fire"@48535
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[28]
b [end]

:[29]
pushbltn.v self.room
pushi.e 168
cmp.i.v EQ
bt [31]

:[30]
pushbltn.v self.room
pushi.e 157
cmp.i.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [36]

:[33]
pushi.e 149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [35]

:[34]
push.s "fire_2"@51092
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[35]
b [end]

:[36]
pushbltn.v self.room
pushi.e 169
cmp.i.v EQ
bt [38]

:[37]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
b [39]

:[38]
push.e 1

:[39]
bf [43]

:[40]
pushi.e 149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [42]

:[41]
push.s "fire_2"@51092
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
push.s "fire_3"@51093
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[42]
b [end]

:[43]
pushbltn.v self.room
pushi.e 210
cmp.i.v EQ
bf [47]

:[44]
pushi.e 149
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [46]

:[45]
push.s "core"@51094
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[46]
b [end]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[end]