.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.note
call.i caster_free(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e -1
pushi.e 0
push.v [array]self.longnote
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.longnote
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.badnote
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.badnote
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.badnote
call.i caster_free(argc=1)
popz.v
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[end]