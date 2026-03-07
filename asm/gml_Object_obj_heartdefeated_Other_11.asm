.localvar 0 arguments
.localvar 1 msgid_base 5947
.localvar 2 i 5948
.localvar 3 text 5949
.localvar 4 xx 5950

:[0]
push.v self.msgnum
pushi.e 100
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 32
pop.v.i global.typer
b [5]

:[2]
push.v self.msgnum
pushi.e 100
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 110
pop.v.i global.typer
b [5]

:[4]
pushi.e 30
pop.v.i global.typer

:[5]
push.s "obj_heartdefeated_"@49949
push.v self.msgnum
call.i string(argc=1)
add.v.s
push.s "_"@3478
add.s.v
pop.v.v local.msgid_base
pushi.e 0
pop.v.i local.i

:[6]
pushi.e 1
conv.i.b
bf [10]

:[7]
pushloc.v local.msgid_base
pushloc.v local.i
call.i string(argc=1)
add.v.v
call.i scr_gettext(argc=1)
pop.v.v local.text
pushloc.v local.text
push.s ""@36
cmp.s.v EQ
bf [9]

:[8]
b [10]

:[9]
pushloc.v local.text
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.msg
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[10]
pushi.e 1
pop.v.i self.dingus
pushglb.v global.typer
pushi.e 155
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 100
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [12]

:[11]
pushi.e 88
pop.v.i local.xx

:[12]
pushi.e 784
conv.i.v
pushi.e 300
conv.i.v
pushloc.v local.xx
call.i instance_create(argc=3)
popz.v

:[end]