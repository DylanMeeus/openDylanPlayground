Module: euler
Synopsis: 
Author: 
Copyright: 

define function main
    (name :: <string>, arguments :: <vector>)
  (euler1());
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


main(application-name(), application-arguments());
