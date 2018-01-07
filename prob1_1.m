% Q2
rref([1 1 1 1 1;1 1 -1 -1 1;1 -1 0 0 1;0 0 1 -1 1]);
rref([1 0 3 2 -4 4;2 1 6 5 0 7;-1 1 -3 -1 1 -5]);

% Q3
size = [5 10 15 20 25 30];
timeMethod1 = zeros(1,6);
timeMethod2 = zeros(1,6);
for i=1:5
  deter = 0;
  while deter == 0
      A = rand(size(i), size(i));
      deter = det(A);
  end
  b = rand(size(i), 1);
  tic;
  x = A\b;
  timeMethod1(i)=toc;
  tic;
  x = A^(-1)*b;
  timeMethod2(i)=toc;
end
scatter(size, timeMethod1);
hold on;
scatter(size, timeMethod2);
xlabel('size of A (set to be square matrix)');
ylabel('time (sec)');
legend('A\b','A^(-1)*b');
hold off;

%Q9
row = randi(10);
x = rand(row, 1);
y = rand(row, 1);
xPyNorm1 = norm(x+y,1);
xPyNorm2 = norm(x+y,2);
xPyNormInf = norm(x+y, inf);
normXPnormY1 = norm(x,1)+norm(y,1);
normXPnormY2 = norm(x,2)+norm(y,2);
normXPnormYInf = norm(x,inf)+norm(y,inf);