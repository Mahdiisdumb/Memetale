event_user(1);

with (other.id) {
    if (eligible == 1)
        event_user(0);
}

snd_play(107);
