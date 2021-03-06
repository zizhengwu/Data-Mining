%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab ????
%
% Stefan Roth 
% ??,?? by oneroad
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (1) ??
% ?? "%" ????.
% ????Matlab???????? "..."??????
A = [1, 2; ...
     3, 4];
% ?????????Matlab??????????????????????
A
% ???????????????????�??�????????????
% ?�??� ???????????,Ctrl+a ????????Ctrl+b?????
% Ctrl+d?????, Tab????????
% ????
% ???????????????�dbstop if error�????????
% ????????????????????
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (2) ????
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (A) Matlab???????????????????????????
A = [1 2; 3 4];              % ???? 2x2 ??
B = [1,2; 3,4];              % ???????????????????????????
                             % �??�???????�?�???
 
N = 5                        % ????
v = [1 0 0]                  % ?????
v = [1; 2; 3]                % ?????
v = v'                       % ???????
v = 1:.5:3                   % ????????????????????1
v = pi*[-4:4]/4              % ???????
v = []                       % ???
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (B) ??????: ?????????????
m = zeros(2, 3)              % ????2x3?0??
v = ones(1, 3)               % ????1x3?1??
m = eye(3)                   % ????3x3?????
v = rand(3, 1)               % ????3x1?????
                             % ??t:
m = zeros(3)                 % ????3x3?0??
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (C) ???????
% ???Matlab??????1?????0
v = [1 2 3];
v(3)                         % ????????
m = [1 2 3 4; 5 7 8 8; 9 10 11 12; 13 14 15 16]
m(1, 3)                      % ???????? matrix?????
m(2, :)                      % ???????2??
m(:, 1)                      % ???????1??
m(1, 1:3)                    % ???1??1-3?
m(2:3, 2)                    % ??2-3???2?
m(2:end, 3)                  % end???????
m = [1 2 3; 4 5 6]     
size(m)                      % ???????
size(m, 1)                   % ????
size(m, 2)                   % ????
m1 = zeros(size(m))          % ???????m???0??
who                          % ????????????
whos                         % ?????????????????
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (3) ??????????
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (A) ??????:
% ???????????????. ?????????
% ????????????????
a = [1 2 3 4]';              % ?????
2 * a                        % ?????
a / 4                        % ?????
b = [5 6 7 8]';              % ??????
a + b                        % ????
a - b                        % ????
a .^ 2                       % ??????? (?? ".")
a .* b                       % ??????? (?? ".")
a ./ b                       % ??????? (?? ".")
log([1 2 3 4])               % ???????
round([1.5 2; 2.2 3.1])      % ?????????????
% ??????????  floor, ceil, ...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (B) ????
a = [1 4 6 3]                % ?????
sum(a)                       % ??????????
mean(a)                      % ???????????
var(a)                       % ???????????
std(a)                       % ????????????
max(a)                       % ????????????
min(a)                       % ????????????
% ???????????????????????
a = [1 2 3; 4 5 6]           % ????
mean(a)                      % ???????
max(a)                       % ??????    
max(max(a))                  % ??????????
mean(a, 2)                   % ????????????????
[1 2 3] * [4 5 6]'           % ??
[1 2 3]' * [4 5 6]           % ??
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (C) ????:
a = rand(3,2)                % ??3x2??
b = rand(2,4)                % ??2x4??
c = a * b                    % ????
a = [1 2; 3 4; 5 6];         % ??3x2??
b = [5 6 7];                 % ??1x3???
b * a                        % ???????
a = [1 3 2; 6 5 4; 7 8 9];   % ??3x3??
inv(a)                       % ?????
eig(a)                       % ??????
[V, D] = eig(a)              % D???????????,V???????????
[U, S, V] = svd(a)           % ????????
% ??????: det, norm, rank, ...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (D) ????????:
a = [1 2; 3 4; 5 6];         % ??3x2??
b = a(:)                     % ?a??????????6x1????
sum(a(:))                    % ??????????
a = reshape(b, 2, 3)         % ?b????2x3???????
a = [1 2]; b = [3 4];        % ?????
c = [a b]                    % ?????1x3????
a = [1; 2; 3];               % ???
c = [a; 4]                   % ?????4x1????
a = [eye(3) rand(3)]         % ?????
b = [eye(3); ones(1, 3)]
b = repmat(5, 3, 2)          % ????3x2????5???
b = repmat([1 2; 3 4], 1, 2) % ????2x4????????????2x2??
b = diag([1 2 3])            % ????????3x3????
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (4) ??????????
% ?????????:
% 
% for ?? = ???
%     ??
%      ...
%     ??
% end 
%
%   ???????????, ??. 1:10 or -1:0.5:1 or [1 4 7]
% 
%
% while ???
%     ??
% end
% 
% if ???
%     ??
% elseif ???
%     ??
% else
%     ??
% end 
%
%   (elseif ? else ?????, "end" ????)
%
%   ????????????????. a < b
%   ???? <, >, <=, >=, ==, ~=  (??? C(++)??)
% ??:
%   ?????Matlab??????.???Matlab 6.5??????
%   ???????????????? ??????????????
%   ?????????
% ?????????????:
for i=1:2:7                  % ???2?1?7??
  i                          % ??i
end
for i=[5 13 -1]              % ???????
  if (i > 10)               
    disp('Larger than 10')   % ?????
  elseif i < 0              
    disp('Negative value') 
  else
    disp('Something else')
  end
end
% ??????: ????A???1xn???v???
% ???A?????v???
m = 50; n = 10; A = ones(m, n); v = 2 * rand(1, n); 
%
% ?????????:
for i=1:m
  A(i,:) = A(i,:) - v;
end
% ????????????????
A = A - repmat(v, m, 1);   % ???????????
% ???????????????????
% ??: ??mxn??A, ???????????B?B????A?
% ??0???
% ?????????:
B = zeros(m,n);
for i=1:m
  for j=1:n
    if A(i,j)>0
      B(i,j) = A(i,j);
    end
  end
end
% ?????????
B = zeros(m,n);
ind = find(A > 0);           % ??A???0??????
B(ind) = A(ind);             % ??????
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%(5) ??
save myfile                  % ?????????????MAT???
save myfile a b              % ??????a?b
clear a b                    % ????????a?b
clear                        % ????????
load myfile                  % ?myfile.mat?????
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%(6) ?????: 
%
% Matlab?????? ".m" ???????????????
% ?????".m" ???. ????????????????
% function [???1, ..., ???m] = myfunction(???1, ..., ???n)
%
% ??????????? 
% ????????????:????????????. ????????????
 
a = [1 2 3 4];               % ????a
b = myfunction(2 * a)        % ????
a                            % ?????a????
[c, d] = ...
  myotherfunction(a, b)      % ???????
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%(7) ?? 
x = [0 1 2 3 4];             % ????
plot(x);                     % ??x?????????
pause                        % ???????
plot(x, 2*x);                % ??2*x?????x
axis([0 8 0 8]);             % ????
figure;                      % ??????
x = pi*[-24:24]/24;
plot(x, sin(x));
xlabel('radians');           % x???
ylabel('sin value');         % y???
title('dummy');              % ??
figure;                      
subplot(1, 2, 1);            % ??????2x1??????????1?
plot(x, sin(x));           
axis square;                 % ?????????
subplot(1, 2, 2);
plot(x, 2*cos(x));           % ????????2?
axis square;
figure;                      
plot(x, sin(x));
hold on;                     % ?????         
plot(x, 2*cos(x), '--');     % '--' ????
legend('sin', 'cos');        % ?????????
hold off;                    % ????????
figure;                     
m = rand(64,64);
imagesc(m)                   % ????????
colormap gray;               % ?????
axis image;                  % ???????
axis off;                    % ????
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%