.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[2]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1216
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 4
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [8]

:[5]
push.s "obj_napstablookfriendtrigger_100"@18995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablookfriendtrigger_101"@18997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablookfriendtrigger_102"@18999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_napstablookfriendtrigger_103"@19001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 36
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.s "obj_napstablookfriendtrigger_108"@19003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablookfriendtrigger_109"@19005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablookfriendtrigger_110"@19007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_napstablookfriendtrigger_111"@19009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[7]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 6
pop.v.i self.con

:[8]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [10]

:[9]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e -3
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 7
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[14]
pushi.e 0
pop.v.i global.interact
pushi.e 117
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]