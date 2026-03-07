.localvar 0 arguments

:[0]
push.s "music/paino/piano1.ogg"@2661
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.p
push.s "music/paino/piano2.ogg"@2662
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.p
push.s "music/paino/piano3.ogg"@2663
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.p
push.s "music/paino/piano4.ogg"@2664
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.p
push.s "music/paino/piano5.ogg"@2665
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.p
push.s "music/paino/piano6.ogg"@2666
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.p
push.s "music/paino/piano7.ogg"@2667
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.p
push.s "music/paino/piano8.ogg"@2668
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.p
push.s "music/paino/piano9.ogg"@2669
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 8
pop.v.v [array]self.p
push.s "music/paino/pianoA.ogg"@2670
conv.s.v
call.i caster_load(argc=1)
pushi.e -1
pushi.e 9
pop.v.v [array]self.p
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 30
cmp.i.v LT
bf [3]

:[2]
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.pp
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.justplayed
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.played
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 0
pop.v.i self.num
pushi.e 1
pop.v.i global.interact
pushi.e 5
pop.v.i self.buffer
pushi.e 0
pop.v.i self.coff
pushi.e 0
pop.v.i self.won
pushi.e 0
pop.v.i self.wonned
pushi.e 0
pop.v.i self.oldmode

:[end]