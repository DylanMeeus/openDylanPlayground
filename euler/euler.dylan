Module: euler
Synopsis: 
Author: 
Copyright: 

define function main
    (name :: <string>, arguments :: <vector>)
    format-out("%d\n",(euler2()));
  exit-application(0);
end function main;


define function euler1 () => ()
    let sum :: <Integer> = 0;
    for(i :: <Integer> from 3 to 1000)
        if (modulo(i,5) = 0 | modulo(i,3) = 0)
            sum := sum + i;
        end if;
    end for;
    format-out("%d\n",sum);

end function euler1;


define function euler2 () => (<Integer>)
    let sum :: <Integer> = 0;
    let x :: <Integer> = 0;
    let y :: <Integer> = 1;
    // define z outside for performance
    let z :: <Integer> = x + y;
    while (y < 4000000)
        z := x + y;
        if (even?(z))
            sum := sum + z;
        end if;
        x := y;
        y := z;
    end while;
    sum;
end function euler2;

main(application-name(), application-arguments());
