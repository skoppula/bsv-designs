import VectorOps::*;
import Vector::*;

typedef Tuple2 T2;
typedef Tuple3 T3;

function T2#(d1, d2) t2(d1 x1, d2 x2) = tuple2(x1, x2);
function T3#(d1, d2, d3) t3(d1 x1, d2 x2, d3 x3) = tuple3(x1, x2, x3);

typedef Vector V;
typedef VectorOps::Vector2D V2;
typedef VectorOps::Vector3D V3;
