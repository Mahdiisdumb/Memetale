.localvar 0 arguments
.localvar 1 newchar 3601
.localvar 2 backspace 3602
.localvar 3 exc 3603

:[0]
push.v self.keyboard_present
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v self.cantype
pushi.e 1
cmp.i.v EQ
bf [41]

:[3]
push.s ""@36
pop.v.s local.newchar
pushi.e 0
pop.v.i local.backspace
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [31]

:[4]
pushi.e 0
pop.v.i local.exc
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i local.exc

:[6]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i local.exc

:[8]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i local.exc

:[10]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 1
pop.v.i local.exc

:[12]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e 1
pop.v.i local.exc
pushi.e 1
pop.v.i local.backspace

:[14]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e 1
pop.v.i local.exc

:[16]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e 1
pop.v.i local.exc

:[18]
pushi.e 27
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [20]

:[19]
pushi.e 1
pop.v.i local.exc

:[20]
pushloc.v local.exc
pushi.e 0
cmp.i.v EQ
bf [31]

:[21]
pushbltn.v self.keyboard_lastchar
pop.v.v local.newchar
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [23]

:[22]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.s "z"@47111
pop.v.s local.newchar

:[26]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [28]

:[27]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
not.b
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.s "x"@2893
pop.v.s local.newchar

:[31]
pushloc.v local.newchar
push.s ""@36
cmp.s.v NEQ
bf [38]

:[32]
push.v self.endbuffer
pushi.e 30
cmp.i.v LT
bf [34]

:[33]
pushi.e 30
pop.v.i self.endbuffer

:[34]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [36]

:[35]
pushloc.v local.newchar
push.v self.mystring
call.i scr_kanatype_append(argc=2)
pop.v.v self.mystring
b [37]

:[36]
push.v self.mystring
pushloc.v local.newchar
add.v.v
pop.v.v self.mystring

:[37]
b [41]

:[38]
pushloc.v local.backspace
conv.v.b
bf [41]

:[39]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 1
cmp.i.v GT
bf [41]

:[40]
pushi.e 1
conv.i.v
push.v self.mystring
call.i string_length(argc=1)
push.v self.mystring
call.i string_delete(argc=3)
pop.v.v self.mystring

:[41]
push.v self.endbuffer
pushi.e 1
sub.i.v
pop.v.v self.endbuffer
push.v self.endbuffer
pushi.e 0
cmp.i.v LT
bf [43]

:[42]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 10
cmp.i.v GT
b [44]

:[43]
push.e 0

:[44]
bf [end]

:[45]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]