.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
pushbltn.v self.argument0
pop.v.v global.typer

:[2]
pushglb.v global.typer
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 32
conv.i.v
pushi.e 16
conv.i.v
pushi.e 95
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 55
sub.i.v
add.v.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[4]
pushglb.v global.typer
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 96
conv.i.v
pushi.e 2
conv.i.v
pushi.e 43
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[6]
pushglb.v global.typer
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 96
conv.i.v
pushi.e 3
conv.i.v
pushi.e 39
conv.i.v
push.v self.x
pushi.e 100
add.i.v
push.v self.y
push.v self.x
push.i 8421376
conv.i.v
pushi.e 7
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[8]
pushglb.v global.typer
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 102
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[10]
pushglb.v global.typer
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 96
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[12]
pushglb.v global.typer
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[14]
pushglb.v global.typer
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 99
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[16]
pushglb.v global.typer
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 102
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[18]
pushglb.v global.typer
pushi.e 9
cmp.i.v EQ
bf [20]

:[19]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 98
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[20]
pushglb.v global.typer
pushi.e 10
cmp.i.v EQ
bf [22]

:[21]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 97
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[22]
pushglb.v global.typer
pushi.e 11
cmp.i.v EQ
bf [24]

:[23]
pushi.e 18
conv.i.v
pushi.e 9
conv.i.v
pushi.e 95
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[24]
pushglb.v global.typer
pushi.e 12
cmp.i.v EQ
bf [26]

:[25]
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[26]
pushglb.v global.typer
pushi.e 13
cmp.i.v EQ
bf [28]

:[27]
pushi.e 20
conv.i.v
pushi.e 11
conv.i.v
pushi.e 100
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[28]
pushglb.v global.typer
pushi.e 14
cmp.i.v EQ
bf [30]

:[29]
pushi.e 20
conv.i.v
pushi.e 14
conv.i.v
pushi.e 100
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[30]
pushglb.v global.typer
pushi.e 15
cmp.i.v EQ
bf [32]

:[31]
pushi.e 20
conv.i.v
pushi.e 18
conv.i.v
pushi.e 100
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[32]
pushglb.v global.typer
pushi.e 16
cmp.i.v EQ
bf [34]

:[33]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 99
conv.i.v
pushi.e 2
conv.i.v
push.d 1.2
conv.d.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[34]
pushglb.v global.typer
pushi.e 17
cmp.i.v EQ
bf [36]

:[35]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 89
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 8
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[36]
pushglb.v global.typer
pushi.e 19
cmp.i.v EQ
bf [38]

:[37]
pushi.e 18
pop.v.i global.typer

:[38]
pushglb.v global.typer
pushi.e 18
cmp.i.v EQ
bf [40]

:[39]
pushi.e 18
conv.i.v
pushi.e 11
conv.i.v
pushi.e 88
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 9
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[40]
pushglb.v global.typer
pushi.e 20
cmp.i.v EQ
bf [42]

:[41]
pushi.e 20
conv.i.v
pushi.e 25
conv.i.v
pushi.e 99
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[42]
pushglb.v global.typer
pushi.e 21
cmp.i.v EQ
bf [44]

:[43]
pushi.e 18
conv.i.v
pushi.e 10
conv.i.v
pushi.e 97
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[44]
pushglb.v global.typer
pushi.e 22
cmp.i.v EQ
bf [46]

:[45]
pushi.e 20
conv.i.v
pushi.e 11
conv.i.v
pushi.e 88
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[46]
pushglb.v global.typer
pushi.e 23
cmp.i.v EQ
bf [48]

:[47]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 96
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 310
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[48]
pushglb.v global.typer
pushi.e 24
cmp.i.v EQ
bf [50]

:[49]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 65
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 310
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[50]
pushglb.v global.typer
pushi.e 25
cmp.i.v EQ
bf [54]

:[51]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [53]

:[52]
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
pushi.e 96
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 19
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v
b [54]

:[53]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 96
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[54]
pushglb.v global.typer
pushi.e 27
cmp.i.v EQ
bf [56]

:[55]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 56
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[56]
pushglb.v global.typer
pushi.e 28
cmp.i.v EQ
bf [58]

:[57]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 65
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[58]
pushglb.v global.typer
pushi.e 30
cmp.i.v EQ
bf [60]

:[59]
pushi.e 36
conv.i.v
pushi.e 20
conv.i.v
pushi.e 91
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[60]
pushglb.v global.typer
pushi.e 31
cmp.i.v EQ
bf [62]

:[61]
pushi.e 18
conv.i.v
pushi.e 12
conv.i.v
pushi.e 91
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[62]
pushglb.v global.typer
pushi.e 32
cmp.i.v EQ
bf [64]

:[63]
pushi.e 36
conv.i.v
pushi.e 20
conv.i.v
pushi.e 84
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[64]
pushglb.v global.typer
pushi.e 33
cmp.i.v EQ
bf [66]

:[65]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 96
conv.i.v
pushi.e 1
conv.i.v
pushi.e 43
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[66]
pushglb.v global.typer
pushi.e 34
cmp.i.v EQ
bf [68]

:[67]
pushi.e 18
conv.i.v
pushi.e 16
conv.i.v
pushi.e 71
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[68]
pushglb.v global.typer
pushi.e 35
cmp.i.v EQ
bf [70]

:[69]
pushi.e 18
conv.i.v
pushi.e 10
conv.i.v
pushi.e 84
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[70]
pushglb.v global.typer
pushi.e 36
cmp.i.v EQ
bf [72]

:[71]
pushi.e 18
conv.i.v
pushi.e 10
conv.i.v
pushi.e 85
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[72]
pushglb.v global.typer
pushi.e 37
cmp.i.v EQ
bf [74]

:[73]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 78
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[74]
pushglb.v global.typer
pushi.e 38
cmp.i.v EQ
bf [76]

:[75]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 78
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[76]
pushglb.v global.typer
pushi.e 39
cmp.i.v EQ
bf [78]

:[77]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 78
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[78]
pushglb.v global.typer
pushi.e 40
cmp.i.v EQ
bf [80]

:[79]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 78
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[80]
pushglb.v global.typer
pushi.e 41
cmp.i.v EQ
bf [82]

:[81]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 78
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[82]
pushglb.v global.typer
pushi.e 42
cmp.i.v EQ
bf [84]

:[83]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 78
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[84]
pushglb.v global.typer
pushi.e 43
cmp.i.v EQ
bf [86]

:[85]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 80
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[86]
pushglb.v global.typer
pushi.e 44
cmp.i.v EQ
bf [88]

:[87]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 81
conv.i.v
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[88]
pushglb.v global.typer
pushi.e 45
cmp.i.v EQ
bf [90]

:[89]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 82
conv.i.v
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[90]
pushglb.v global.typer
pushi.e 47
cmp.i.v EQ
bf [92]

:[91]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 83
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[92]
pushglb.v global.typer
pushi.e 48
cmp.i.v EQ
bf [94]

:[93]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 8
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[94]
pushglb.v global.typer
pushi.e 49
cmp.i.v EQ
bf [96]

:[95]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 83
conv.i.v
pushi.e 1
conv.i.v
pushi.e 43
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[96]
pushglb.v global.typer
pushi.e 50
cmp.i.v EQ
bf [98]

:[97]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 56
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[98]
pushglb.v global.typer
pushi.e 51
cmp.i.v EQ
bf [100]

:[99]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 56
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[100]
pushglb.v global.typer
pushi.e 52
cmp.i.v EQ
bf [102]

:[101]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 83
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[102]
pushglb.v global.typer
pushi.e 53
cmp.i.v EQ
bf [104]

:[103]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 56
conv.i.v
pushi.e 4
conv.i.v
push.d 1.5
conv.d.v
pushi.e 999
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[104]
pushglb.v global.typer
pushi.e 54
cmp.i.v EQ
bf [106]

:[105]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 56
conv.i.v
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[106]
pushglb.v global.typer
pushi.e 55
cmp.i.v EQ
bf [108]

:[107]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 97
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 999
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[108]
pushglb.v global.typer
pushi.e 60
cmp.i.v EQ
bf [110]

:[109]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 91
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[110]
pushglb.v global.typer
pushi.e 61
cmp.i.v EQ
bf [112]

:[111]
pushi.e 32
conv.i.v
pushi.e 16
conv.i.v
pushi.e 97
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
push.i 99999
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[112]
pushglb.v global.typer
pushi.e 62
cmp.i.v EQ
bf [114]

:[113]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 91
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[114]
pushglb.v global.typer
pushi.e 63
cmp.i.v EQ
bf [116]

:[115]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 91
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[116]
pushglb.v global.typer
pushi.e 64
cmp.i.v EQ
bf [118]

:[117]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 91
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[118]
pushglb.v global.typer
pushi.e 66
cmp.i.v EQ
bf [120]

:[119]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[120]
pushglb.v global.typer
pushi.e 67
cmp.i.v EQ
bf [122]

:[121]
pushi.e 32
conv.i.v
pushi.e 16
conv.i.v
pushi.e 99
conv.i.v
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 999
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[122]
pushglb.v global.typer
pushi.e 68
cmp.i.v EQ
bf [124]

:[123]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 500
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[124]
pushglb.v global.typer
pushi.e 69
cmp.i.v EQ
bf [126]

:[125]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 99
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 500
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[126]
pushglb.v global.typer
pushi.e 70
cmp.i.v EQ
bf [128]

:[127]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 500
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[128]
pushglb.v global.typer
pushi.e 71
cmp.i.v EQ
bf [130]

:[129]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 99
conv.i.v
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 500
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[130]
pushglb.v global.typer
pushi.e 72
cmp.i.v EQ
bf [132]

:[131]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 500
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[132]
pushglb.v global.typer
pushi.e 73
cmp.i.v EQ
bf [134]

:[133]
pushi.e 32
conv.i.v
pushi.e 16
conv.i.v
pushi.e 97
conv.i.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
push.i 99999
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[134]
pushglb.v global.typer
pushi.e 74
cmp.i.v EQ
bf [136]

:[135]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 83
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 490
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[136]
pushglb.v global.typer
pushi.e 75
cmp.i.v EQ
bf [138]

:[137]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 83
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 490
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[138]
pushglb.v global.typer
pushi.e 76
cmp.i.v EQ
bf [140]

:[139]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 84
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[140]
pushglb.v global.typer
pushi.e 77
cmp.i.v EQ
bf [142]

:[141]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 99
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[142]
pushglb.v global.typer
pushi.e 78
cmp.i.v EQ
bf [144]

:[143]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 99
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[144]
pushglb.v global.typer
pushi.e 79
cmp.i.v EQ
bf [146]

:[145]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 85
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[146]
pushglb.v global.typer
pushi.e 80
cmp.i.v EQ
bf [148]

:[147]
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
pushi.e 89
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[148]
pushglb.v global.typer
pushi.e 81
cmp.i.v EQ
bf [150]

:[149]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 78
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[150]
pushglb.v global.typer
pushi.e 82
cmp.i.v EQ
bf [152]

:[151]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 83
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 490
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[152]
pushglb.v global.typer
pushi.e 83
cmp.i.v EQ
bf [154]

:[153]
pushi.e 20
conv.i.v
pushi.e 11
conv.i.v
pushi.e 88
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[154]
pushglb.v global.typer
pushi.e 84
cmp.i.v EQ
bf [156]

:[155]
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[156]
pushglb.v global.typer
pushi.e 85
cmp.i.v EQ
bf [158]

:[157]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 84
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[158]
pushglb.v global.typer
pushi.e 86
cmp.i.v EQ
bf [160]

:[159]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 85
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[160]
pushglb.v global.typer
pushi.e 87
cmp.i.v EQ
bf [162]

:[161]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 85
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[162]
pushglb.v global.typer
pushi.e 88
cmp.i.v EQ
bf [164]

:[163]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 85
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[164]
pushglb.v global.typer
pushi.e 89
cmp.i.v EQ
bf [166]

:[165]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 84
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[166]
pushglb.v global.typer
pushi.e 90
cmp.i.v EQ
bf [168]

:[167]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 84
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[168]
pushglb.v global.typer
pushi.e 91
cmp.i.v EQ
bf [170]

:[169]
pushi.e 18
conv.i.v
pushi.e 10
conv.i.v
pushi.e 102
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[170]
pushglb.v global.typer
pushi.e 92
cmp.i.v EQ
bf [172]

:[171]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 96
conv.i.v
pushi.e 1
conv.i.v
pushi.e 43
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[172]
pushglb.v global.typer
pushi.e 93
cmp.i.v EQ
bf [174]

:[173]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 79
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[174]
pushglb.v global.typer
pushi.e 94
cmp.i.v EQ
bf [176]

:[175]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 79
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[176]
pushglb.v global.typer
pushi.e 95
cmp.i.v EQ
bf [178]

:[177]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 79
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[178]
pushglb.v global.typer
pushi.e 96
cmp.i.v EQ
bf [180]

:[179]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 79
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[180]
pushglb.v global.typer
pushi.e 97
cmp.i.v EQ
bf [182]

:[181]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 56
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[182]
pushglb.v global.typer
pushi.e 98
cmp.i.v EQ
bf [184]

:[183]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[184]
pushglb.v global.typer
pushi.e 99
cmp.i.v EQ
bf [186]

:[185]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[186]
pushglb.v global.typer
pushi.e 100
cmp.i.v EQ
bf [188]

:[187]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 97
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[188]
pushglb.v global.typer
pushi.e 101
cmp.i.v EQ
bf [190]

:[189]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[190]
pushglb.v global.typer
pushi.e 102
cmp.i.v EQ
bf [192]

:[191]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[192]
pushglb.v global.typer
pushi.e 103
cmp.i.v EQ
bf [194]

:[193]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 84
conv.i.v
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[194]
pushglb.v global.typer
pushi.e 104
cmp.i.v EQ
bf [196]

:[195]
pushi.e 34
conv.i.v
pushi.e 16
conv.i.v
pushi.e 97
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[196]
pushglb.v global.typer
pushi.e 105
cmp.i.v EQ
bf [198]

:[197]
pushi.e 34
conv.i.v
pushi.e 16
conv.i.v
pushi.e 97
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[198]
pushglb.v global.typer
pushi.e 106
cmp.i.v EQ
bf [200]

:[199]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 97
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[200]
pushglb.v global.typer
pushi.e 107
cmp.i.v EQ
bf [202]

:[201]
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
pushi.e 89
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 5
add.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[202]
pushglb.v global.typer
pushi.e 108
cmp.i.v EQ
bf [204]

:[203]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 97
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[204]
pushglb.v global.typer
pushi.e 109
cmp.i.v EQ
bf [206]

:[205]
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
pushi.e 89
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 200
add.i.v
push.v self.y
push.v self.x
pushi.e 5
add.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[206]
pushglb.v global.typer
pushi.e 110
cmp.i.v EQ
bf [208]

:[207]
pushi.e 36
conv.i.v
pushi.e 20
conv.i.v
pushi.e 89
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[208]
pushglb.v global.typer
pushi.e 111
cmp.i.v EQ
bf [210]

:[209]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 96
conv.i.v
pushi.e 1
conv.i.v
pushi.e 43
conv.i.v
push.v self.x
pushi.e 190
add.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[210]
pushglb.v global.typer
pushi.e 112
cmp.i.v EQ
bf [212]

:[211]
pushi.e 18
conv.i.v
pushi.e 9
conv.i.v
pushi.e 97
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[212]
pushglb.v global.typer
pushi.e 113
cmp.i.v EQ
bf [214]

:[213]
pushi.e 32
conv.i.v
pushi.e 16
conv.i.v
pushi.e 97
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[214]
pushglb.v global.typer
pushi.e 114
cmp.i.v EQ
bf [216]

:[215]
pushi.e 36
conv.i.v
pushi.e 20
conv.i.v
pushi.e 91
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[216]
pushglb.v global.typer
pushi.e 115
cmp.i.v EQ
bf [218]

:[217]
pushi.e 36
conv.i.v
pushi.e 20
conv.i.v
pushi.e 99
conv.i.v
pushi.e 4
conv.i.v
push.d 1.4
conv.d.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 999
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[218]
pushglb.v global.typer
pushi.e 116
cmp.i.v EQ
bf [220]

:[219]
pushi.e 32
conv.i.v
pushi.e 20
conv.i.v
pushi.e 99
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 999
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[220]
pushglb.v global.typer
pushi.e 117
cmp.i.v EQ
bf [222]

:[221]
pushi.e 32
conv.i.v
pushi.e 20
conv.i.v
pushi.e 99
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 999
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[222]
pushglb.v global.typer
pushi.e 118
cmp.i.v EQ
bf [224]

:[223]
pushi.e 32
conv.i.v
pushi.e 16
conv.i.v
pushi.e 97
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[224]
pushglb.v global.typer
pushi.e 119
cmp.i.v EQ
bf [226]

:[225]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 98
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[226]
pushglb.v global.typer
pushi.e 120
cmp.i.v EQ
bf [230]

:[227]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [229]

:[228]
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 98
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 500
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v
b [230]

:[229]
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 98
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 500
add.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[230]
pushglb.v global.typer
pushi.e 121
cmp.i.v EQ
bf [232]

:[231]
pushi.e 32
conv.i.v
pushi.e 16
conv.i.v
pushi.e 97
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
push.i 99999
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[232]
pushglb.v global.typer
pushi.e 666
cmp.i.v EQ
bf [234]

:[233]
pushi.e 18
conv.i.v
pushi.e 16
conv.i.v
pushi.e 71
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 290
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 154
conv.i.v
call.i script_execute(argc=11)
popz.v

:[234]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [end]

:[235]
push.v self.myfont
pushi.e 1
cmp.i.v EQ
bf [245]

:[236]
pushi.e 13
pop.v.i self.myfont
push.v self.spacing
pushi.e 26
mul.i.v
pushi.e 16
conv.i.d
div.d.v
pop.v.v self.spacing
push.v self.vspacing
pushi.e 32
cmp.i.v EQ
bf [238]

:[237]
pushi.e 36
pop.v.i self.vspacing

:[238]
pushglb.v global.typer
pushi.e 30
cmp.i.v EQ
bt [242]

:[239]
pushglb.v global.typer
pushi.e 32
cmp.i.v EQ
bt [242]

:[240]
pushglb.v global.typer
pushi.e 114
cmp.i.v EQ
bt [242]

:[241]
pushglb.v global.typer
pushi.e 115
cmp.i.v EQ
b [243]

:[242]
push.e 1

:[243]
bf [245]

:[244]
push.v self.spacing
pushi.e 2
sub.i.v
pop.v.v self.spacing

:[245]
push.v self.myfont
pushi.e 2
cmp.i.v EQ
bf [247]

:[246]
pushi.e 14
pop.v.i self.myfont
push.v self.spacing
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.spacing
pushi.e 19
pop.v.i self.vspacing

:[247]
push.v self.myfont
pushi.e 4
cmp.i.v EQ
bf [249]

:[248]
pushi.e 17
pop.v.i self.myfont
push.v self.spacing
pushi.e 13
mul.i.v
pushi.e 9
conv.i.d
div.d.v
pop.v.v self.spacing

:[249]
push.v self.myfont
pushi.e 5
cmp.i.v EQ
bf [251]

:[250]
pushi.e 18
pop.v.i self.myfont
push.v self.spacing
pushi.e 58
mul.i.v
pushi.e 25
conv.i.d
div.d.v
pop.v.v self.spacing

:[251]
push.v self.myfont
pushi.e 8
cmp.i.v EQ
bf [255]

:[252]
pushglb.v global.typer
pushi.e 80
cmp.i.v LT
bf [254]

:[253]
pushi.e 11
pop.v.i self.myfont
push.d 0.5
pop.v.d self.htextscale
push.d 0.5
pop.v.d self.vtextscale
push.v self.spacing
pushi.e 15
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.spacing
b [255]

:[254]
pushi.e 10
pop.v.i self.myfont
push.v self.spacing
pushi.e 15
mul.i.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.spacing

:[255]
push.v self.myfont
pushi.e 9
cmp.i.v EQ
bf [263]

:[256]
pushglb.v global.typer
pushi.e 22
cmp.i.v EQ
bt [258]

:[257]
pushglb.v global.typer
pushi.e 83
cmp.i.v EQ
b [259]

:[258]
push.e 1

:[259]
bf [261]

:[260]
pushi.e 16
pop.v.i self.myfont
pushi.e 20
pop.v.i self.vspacing
push.v self.writingxend
pushi.e 14
add.i.v
pop.v.v self.writingxend
b [262]

:[261]
pushi.e 15
pop.v.i self.myfont
push.d 0.5
pop.v.d self.htextscale
push.d 0.5
pop.v.d self.vtextscale
pushi.e 18
pop.v.i self.vspacing
push.v self.writingxend
pushi.e 20
add.i.v
pop.v.v self.writingxend
push.v self.writingy
pushi.e 1
sub.i.v
pop.v.v self.writingy

:[262]
pushi.e 1
pop.v.i self.vtext

:[263]
pushglb.v global.typer
pushi.e 11
cmp.i.v EQ
bt [265]

:[264]
pushglb.v global.typer
pushi.e 112
cmp.i.v EQ
b [266]

:[265]
push.e 1

:[266]
bf [end]

:[267]
push.v self.textspeed
pushi.e 1
add.i.v
pop.v.v self.textspeed

:[end]