if (col == 0) {
    with (other.id) {
        if (eligible == 1)
            event_user(0);
    }
    
    snd_play(107);
    event_user(1);
}
