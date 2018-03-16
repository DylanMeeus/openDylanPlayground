Module: fcl
Synopsis: 
Author: 
Copyright: 

define function main
    (name :: <string>, arguments :: <vector>)

    with-open-file (filestream = "../../flow.fcl", element-type: <byte-vector>)
    end;

    format-out("done\n");
  exit-application(0);
end function main;

main(application-name(), application-arguments());
