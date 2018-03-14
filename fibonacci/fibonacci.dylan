Module: fibonacci
Synopsis: Fibonacci sequence test program 
Author: Dylan
Copyright: Nope.

define function main
    (name :: <string>, arguments :: <vector>)
    (fib(4));
  exit-application(0);
end function main;


define function fib(iter :: <Integer>) => ()
    let x :: <Integer> = 0;
    let y :: <Integer> = 1;
    format-out("%d\n%d\n",x,y);
    for (i :: <Integer> from 0 to iter)
        let w = x + y;
        format-out("%d\n",w);
        x := y;
        y := w;
    end for;
end function fib;

main(application-name(), application-arguments());
