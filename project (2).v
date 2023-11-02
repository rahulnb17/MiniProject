module project(T,A,B,C,D,E,F,G,H,V);
    input T,A,B,C,D;
    output E,F,G,H,V;
    assign E = (!T && !B && !C)||(!T && !A && D)||(!A && B && C)||(A && !B)||(A && !C)||(A && !D);
    assign F = (B && (!A || !C || !D))||(T && !B);
    assign G = (C && (!A || !B || !D))||(T && B && !C);
    assign H = (D && (!A || !B || !C))||(!T && (B^^C))||(!T && A && !B)||(A && B && C && !D);
    assign V = !A || !D || (T && (!B || !C));
endmodule