Module: dylan-user

define library fcl
  use common-dylan;
  use io;
  use system;
  use strings;
end library fcl;

define module fcl
  use common-dylan;
  use format-out;
  use file-system,
    import: {
        with-open-file
        };
end module fcl;
