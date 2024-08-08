word(abalone, a, b, a, l, o, n, e).
word(abandon, a, b, a, n, d, o, n).
word(anagram, a, n, a, g, r, a, m).
word(connect, c, o, n, n, e, c, t).
word(elegant, e, l, e, g, a, n, t).
word(enhance, e, n, h, a, n, c, e).

crossword(V1, V2, V3, H1, H2, H3) :- word(V1, _, L1, _, L2, _, L3, _),
    								 word(V2, _, L4, _, L5, _, L6, _),
    								 word(V3, _, L7, _, L8, _, L9, _),
    								 word(H1, _, L1, _, L4, _, L7, _),
    								 word(H2, _, L2, _, L5, _, L8, _),
    								 word(H3, _, L3, _, L6, _, L9, _).