:- begin_tests(space_age).

    float_eq(Real, Expected) :-
        Expected is round(Real * 100).

    test(earth) :-
        space_age("Earth", 1000000000, Age),
        float_eq(Age, 3169).

    test(mercury) :-
        space_age("Mercury", 2134835688, Age),
        float_eq(Age, 28088).

    test(venus) :-
        space_age("Venus", 189839836, Age),
        float_eq(Age, 978).

    test(mars) :-
        space_age("Mars", 2329871239, Age),
        float_eq(Age, 3925).

    test(jupiter) :-
        space_age("Jupiter", 901876382, Age),
        float_eq(Age, 241).

    test(saturn) :-
        space_age("Saturn", 3000000000, Age),
        float_eq(Age, 323).
    
    test(uranus) :-
        space_age("Uranus", 3210123456, Age),
        float_eq(Age, 121).

    test(neptune) :-
        space_age("Neptune", 8210123456, Age),
        float_eq(Age, 158).

:- end_tests(space_age).
