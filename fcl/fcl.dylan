Module: fcl
Synopsis: Flow Charn Language (or something of the likes)
Author: Dylan
Copyright: N/A


define function main
    (name :: <string>, arguments :: <vector>)
    
    // parse flow.fcl
    println("opening file..");


    with-open-file (stream = "../../flow.fcl", element-type: <byte-vector>)
        let current-question = "";
        while(~stream-at-end?(stream))
            let line = read-line(stream);
            // is it a question
            if (starts-with?(line,"#"))
                current-question := make(<question>, question: line);
                print-question(current-question);
            elseif (starts-with?(line,"|"))
                println(line);
            end if;


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
define function println(t :: <object>) => ()
    format-out("%s\n",t);
end function println;


// now for the fun part, parse the elements into sensible groups?
define class <answer-statement> (<object>)
    slot answer :: <string>, init-keyword: answer:;
    slot goto :: <integer>, init-keyword: goto:;
end class <answer-statement>;

// question
define class <question> (<object>)
    slot question :: <string>, init-keyword: question:;
end class <question>;


define method add-answer(answer :: <answer-statement>)
end method add-answer;

define method print-question(q :: <question>) => ()
    println(q.question);
end method;


main(application-name(), application-arguments());


