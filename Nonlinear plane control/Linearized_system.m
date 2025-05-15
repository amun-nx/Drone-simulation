m = 78000;
Iy = 9*10e6;
g = 9.81;

v0 = 840/3.6;
w0 = 0;
theta0 = 60000/(m*g);
q0 = 0;

A = [0 -q0 -g*cos(theta0) -w0;
    q0 0 g*sin(theta0) v0;
    0 0 0 1;
    0 0 0 0];

B = [1/m 0 0;
    0 1/m 0;
    0 0 0;
    0 0 1/Iy];

C = [0 0 1 0;
    0 0 0 1];

D = [0 0 0;
    0 0 0];


ctrb(A,B)
rank(ctrb(A,B))

obsv(A,C)
rank(obsv(A,C))

K = place(A,B,[-1, -2, -3, -4])
