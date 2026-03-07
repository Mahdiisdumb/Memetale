.localvar 0 arguments
.localvar 1 str 941
.localvar 2 result 942
.localvar 3 lastch 943
.localvar 4 i 944
.localvar 5 ch 945
.localvar 6 halfkata 946
.localvar 7 daku_from 947
.localvar 8 daku_to 948
.localvar 9 pos 949
.localvar 10 handaku_from 950
.localvar 11 handaku_to 951

:[0]
pushbltn.v self.argument0
pop.v.v local.str
push.s ""@36
pop.v.s local.result
push.s ""@36
pop.v.s local.lastch
pushi.e 1
pop.v.i local.i

:[1]
pushloc.v local.i
pushloc.v local.str
call.i string_length(argc=1)
cmp.v.v LTE
bf [20]

:[2]
pushloc.v local.i
pushloc.v local.str
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch
pushloc.v local.ch
pushi.e 12449
cmp.i.v GTE
bf [4]

:[3]
pushloc.v local.ch
pushi.e 12534
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v local.ch
pushi.e 96
sub.i.v
pop.v.v local.ch
b [19]

:[7]
pushloc.v local.ch
push.i 65377
cmp.i.v GTE
bf [9]

:[8]
pushloc.v local.ch
push.i 65439
cmp.i.v LTE
b [10]

:[9]
push.e 0

:[10]
bf [19]

:[11]
push.s "。「」、・をぁぃぅぇぉャュョッーあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわん゛゜"@6349
pop.v.s local.halfkata
pushloc.v local.ch
push.i 65376
sub.i.v
pushloc.v local.halfkata
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch
pushloc.v local.lastch
push.s ""@36
cmp.s.v NEQ
bf [19]

:[12]
pushloc.v local.ch
pushi.e 12443
cmp.i.v EQ
bf [16]

:[13]
push.s "かきくけこさしすせそたちつてとはひふへほ"@6351
pop.v.s local.daku_from
push.s "がぎぐげござじずぜぞだぢづでどばびぶべぼ"@6353
pop.v.s local.daku_to
pushloc.v local.daku_from
pushloc.v local.lastch
call.i string_pos(argc=2)
pop.v.v local.pos
pushloc.v local.pos
pushi.e 0
cmp.i.v NEQ
bf [15]

:[14]
pushloc.v local.pos
pushloc.v local.daku_to
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch

:[15]
b [19]

:[16]
pushloc.v local.ch
pushi.e 12444
cmp.i.v EQ
bf [19]

:[17]
push.s "はひふへほ"@6356
pop.v.s local.handaku_from
push.s "ぱぴぷぺぽ"@6358
pop.v.s local.handaku_to
pushloc.v local.handaku_from
pushloc.v local.lastch
call.i string_pos(argc=2)
pop.v.v local.pos
pushloc.v local.pos
pushi.e 0
cmp.i.v NEQ
bf [19]

:[18]
pushloc.v local.pos
pushloc.v local.handaku_to
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch

:[19]
pushloc.v local.ch
call.i chr(argc=1)
pop.v.v local.lastch
push.v local.result
pushloc.v local.lastch
add.v.v
pop.v.v local.result
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[20]
pushloc.v local.result
ret.v

:[end]