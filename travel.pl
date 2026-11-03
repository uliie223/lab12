road(makkah, madinah).
road(madinah, makkah).
road(madinah, taif).
road(madinah, tabuk).
road(tabuk, taif).
road(taif, tabuk).
road(makkah, riyadh).
road(riyadh, makkah).
road(taif, dammam).
road(riyadh, dammam).
road(dammam, riyadh).
road(dammam, al_qatif).
road(al_qatif, dammam).
road(al_qatif, madinah).
road(dammam, taif).

travel(Start, End, Path) :-
    travel_path(Start, End, [Start], ReversePath),
    reverse(ReversePath, Path).

travel_path(End, End, Visited, Visited).

travel_path(Current, End, Visited, Path) :-
    road(Current, Next),
    \+ member(Next, Visited),
    travel_path(Next, End, [Next|Visited], Path).
