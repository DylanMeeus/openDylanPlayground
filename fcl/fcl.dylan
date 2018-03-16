Module: fcl
Synopsis: 
Author: 
Copyright: 

define function main
    (name :: <string>, arguments :: <vector>)
    
    // parse flow.fcl
    println("done");
    with-open-file (stream = "../../flow.fcl", element-type: <byte-vector>)
        while(~stream-at-end?(stream))
            let el = read-element(stream);
            format-out("%s",el);
        end while;
    end;

    println("done");
  exit-application(0);
end function main;


define function parse-stream(stream :: <stream>) => ()
    println("Parsing streaming");
    format(stream, "%s");
end function parse-stream;


// utility function because I'm an idiot and keep forgetting \n
define function println(t :: <byte-string>) => ()
    format-out("%s\n",t);
end function println;

main(application-name(), application-arguments());
