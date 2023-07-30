pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Multiplier2 () {  

    signal input a;
   signal input b;
   signal x;
   signal y;
   signal output q;
   component andgate=AND();
   component orgate=OR();
   component notgate=NOT();
   andgate.a<==a;
   andgate.b<==b;
   x<==andgate.out;
   notgate.a<==b;
   y<==notgate.out;
   orgate.a<==x;
   orgate.b<==y;
   q<==orgate.out;}
   template NOT() {
    signal input a;
    signal output out;

    out <== 1 + a - 2*a;
}
   
   template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}


component main = Multiplier2();