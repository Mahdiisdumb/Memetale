.localvar 0 arguments

:[0]
push.v self.drawtext
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1207
conv.i.v
pushi.e 180
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sn
push.v self.string1
push.v self.sn
conv.v.i
pop.v.v [stacktop]self.sting
pushglb.v global.language
push.s "en"@3390
cmp.s.v NEQ
bf [3]

:[2]
pushi.e 0
push.v self.sn
conv.v.i
pop.v.i [stacktop]self.can_off
push.v self.strtime1
push.v self.sn
conv.v.i
pushi.e 3
pop.v.v [array]self.alarm

:[3]
pushi.e 0
pop.v.i self.drawtext

:[4]
push.v self.drawtext2
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1207
conv.i.v
pushi.e 190
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sn2
push.v self.string2
push.v self.sn2
conv.v.i
pop.v.v [stacktop]self.sting
pushglb.v global.language
push.s "en"@3390
cmp.s.v NEQ
bf [7]

:[6]
pushi.e 0
push.v self.sn2
conv.v.i
pop.v.i [stacktop]self.can_off
push.v self.strtime2
push.v self.sn2
conv.v.i
pushi.e 3
pop.v.v [array]self.alarm

:[7]
pushi.e 0
pop.v.i self.drawtext2

:[end]