.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i self.maxtime
push.v self.h_mode
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 6
pop.v.i self.maxtime

:[2]
push.v self.times
push.v self.maxtime
cmp.v.v LT
bf [30]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.which
push.v self.which
push.v self.lastwhichwhich
cmp.v.v EQ
bf [5]

:[4]
push.v self.which
push.v self.lastwhich
cmp.v.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [10]

:[7]
push.v self.which
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.which
b [10]

:[9]
pushi.e 0
pop.v.i self.which

:[10]
push.v self.h_mode
pushi.e 0
cmp.i.v EQ
bf [15]

:[11]
push.v self.which
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 106
push.v self.sword_a
conv.v.i
pop.v.i [stacktop]self.timer

:[13]
push.v self.which
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 106
push.v self.sword_b
conv.v.i
pop.v.i [stacktop]self.timer

:[15]
push.v self.h_mode
pushi.e 1
cmp.i.v EQ
bf [20]

:[16]
push.v self.which
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 109
push.v self.sword_a
conv.v.i
pop.v.i [stacktop]self.timer

:[18]
push.v self.which
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 109
push.v self.sword_b
conv.v.i
pop.v.i [stacktop]self.timer

:[20]
push.v self.h_mode
pushi.e 2
cmp.i.v EQ
bf [25]

:[21]
push.v self.which
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 112
push.v self.sword_a
conv.v.i
pop.v.i [stacktop]self.timer

:[23]
push.v self.which
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 112
push.v self.sword_b
conv.v.i
pop.v.i [stacktop]self.timer

:[25]
push.v self.h_mode
push.v self.sword_a
conv.v.i
pop.v.v [stacktop]self.h_mode
push.v self.h_mode
push.v self.sword_b
conv.v.i
pop.v.v [stacktop]self.h_mode
push.v self.lastwhich
pop.v.v self.lastwhichwhich
push.v self.which
pop.v.v self.lastwhich
pushi.e 27
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.h_mode
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 24
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[27]
push.v self.h_mode
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
pushi.e 21
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[29]
b [31]

:[30]
pushi.e 89
push.v self.sword_a
conv.v.i
pop.v.i [stacktop]self.timer
pushi.e 89
push.v self.sword_b
conv.v.i
pop.v.i [stacktop]self.timer
pushi.e 1
pop.v.i 592.twinkle
pushi.e 1
pop.v.i self.freakcon

:[31]
push.v self.times
pushi.e 1
add.i.v
pop.v.v self.times
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.headrot

:[end]