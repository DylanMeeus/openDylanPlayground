Module: euler
Synopsis: 
Author: 
Copyright: 

define function main
    (name :: <string>, arguments :: <vector>)
    format-out("%d\n",(euler4()));
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


define function euler2 () => (sum :: <Integer>)
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

// largest palindrome function, 3 digits
define function euler4 () => (largest :: <Integer>)
    let largest = 0;

    local method isPalindrome? (p :: <Integer>) 
          let s = integer-to-string(p);
          s = reverse(s);
    end isPalindrome?;

    for(i :: <Integer> from 100 to 999)
        for(j :: <Integer> from 100 to 999)
            let z = i * j;
            if (isPalindrome?(z) & z > largest)
                largest := z;
            end if;
        end for;
    end for;
    largest;
end function euler4;



main(application-name(), application-arguments());
