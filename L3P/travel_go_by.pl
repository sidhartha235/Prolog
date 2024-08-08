byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).
byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).
byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(losAngeles,auckland).

travel(From, To, go(From, To, Mode)) :- (byCar(From, To), Mode = car);
                                        (byTrain(From, To), Mode = train);
                                        (byPlane(From, To), Mode = plane).

travel(From, To, go(From, Intermediate, Mode, Go)) :- ((byCar(From, Intermediate), Mode = car);
                                                       (byTrain(From, Intermediate), Mode = train);
                                                       (byPlane(From, Intermediate), Mode = plane)),
                                                      travel(Intermediate, To, Go).