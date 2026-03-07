.localvar 0 arguments

:[0]
push.v self.rating
pushi.e -1
push.v self.spearno
conv.v.i
push.v [array]self.timemod
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -1
push.v self.spearno
conv.v.i
push.v [array]self.speartype
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 266
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b
push.v self.dmg
push.v self.b
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
pushi.e -1
push.v self.spearno
conv.v.i
push.v [array]self.speartype
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 267
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b
push.v self.dmg
push.v self.b
conv.v.i
pop.v.v [stacktop]self.dmg

:[4]
pushi.e -1
push.v self.spearno
conv.v.i
push.v [array]self.speartype
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.rating
pushi.e 2
mul.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 267
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e -1
push.v self.spearno
conv.v.i
push.v [array]self.timemod
push.v self.b
conv.v.i
pop.v.v [stacktop]self.site
push.v self.dmg
push.v self.b
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 266
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e -1
push.v self.spearno
conv.v.i
push.v [array]self.speardir
push.v self.b
conv.v.i
pop.v.v [stacktop]self.site
push.v self.dmg
push.v self.b
conv.v.i
pop.v.v [stacktop]self.dmg

:[6]
pushi.e -1
push.v self.spearno
conv.v.i
push.v [array]self.speedmod
push.v self.b
conv.v.i
pop.v.v [stacktop]self.speedmod
pushi.e -1
push.v self.spearno
conv.v.i
push.v [array]self.speardir
push.v self.b
conv.v.i
pop.v.v [stacktop]self.site
push.v self.spearno
pushi.e 1
add.i.v
pop.v.v self.spearno
push.v self.spearno
push.v self.spearmax
cmp.v.v GT
bf [end]

:[7]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.done

:[end]