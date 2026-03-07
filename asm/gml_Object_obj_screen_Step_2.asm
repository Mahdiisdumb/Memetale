.localvar 0 arguments

:[0]
pushglb.v global.inbattle
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 18
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 108
conv.i.v
call.i script_execute(argc=1)
popz.v

:[5]
push.v self.messed
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "Floweytale"@47776
conv.s.v
call.i window_set_caption(argc=1)
popz.v

:[7]
push.v self.messed
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.s " "@18
conv.s.v
call.i window_set_caption(argc=1)
popz.v

:[9]
push.v self.messed
pushi.e 3
cmp.i.v EQ
bf [end]

:[10]
push.s ""@36
pop.v.s self.str_r
pushi.e 2
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
call.i floor(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[11]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.ir
push.v self.ir
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.s " "@18
conv.s.v
push.s " "@18
conv.s.v
push.s "l"@3021
conv.s.v
push.s "k"@47780
conv.s.v
push.s "j"@2963
conv.s.v
push.s "i"@37
conv.s.v
push.s "h"@3024
conv.s.v
push.s "g"@358
conv.s.v
push.s "f"@5310
conv.s.v
push.s "e"@47123
conv.s.v
push.s "d"@3518
conv.s.v
push.s "c"@2905
conv.s.v
push.s "b"@2904
conv.s.v
push.s "a"@2906
conv.s.v
call.i choose(argc=14)
pop.v.v self.str_piece

:[13]
push.v self.ir
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.s " "@18
conv.s.v
push.s " "@18
conv.s.v
push.s "z"@47111
conv.s.v
push.s "y"@2892
conv.s.v
push.s "x"@2893
conv.s.v
push.s "w"@3023
conv.s.v
push.s "v"@47782
conv.s.v
push.s "u"@2917
conv.s.v
push.s "t"@3022
conv.s.v
push.s "s"@797
conv.s.v
push.s "r"@715
conv.s.v
push.s "q"@3054
conv.s.v
push.s "p"@2350
conv.s.v
push.s "o"@47125
conv.s.v
push.s "n"@359
conv.s.v
push.s "m"@47740
conv.s.v
call.i choose(argc=16)
pop.v.v self.str_piece

:[15]
push.v self.str_r
push.v self.str_piece
add.v.v
pop.v.v self.str_r
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [11]

:[16]
popz.i
push.v self.str_r
call.i window_set_caption(argc=1)
popz.v

:[end]