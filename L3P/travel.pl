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

travel(X, Y) :- byCar(X, Y); byTrain(X, Y); byPlane(X, Y).
travel(X, Y) :- (byCar(X, Z); byTrain(X, Z); byPlane(X, Z)),
                travel(Z, Y).