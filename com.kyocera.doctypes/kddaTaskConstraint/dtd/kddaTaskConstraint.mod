<?xml version="1.0" encoding="UTF-8"?>
<!-- ======================================
     Constraint Domain: Paragraphs with
     only highlight domain or ui domain elements.
     
     Copyright (c) 2015 KYOCERA Document Solutions Inc.
     
     ====================================== -->

<!ENTITY task-constraints "(topic task kddaTask-c)" >

<!ENTITY % title             "title"            >
<!ENTITY % shortdesc   "shortdesc"  >
<!ENTITY % taskbody     "taskbody"  >
<!ENTITY % context        "context"    >
<!ENTITY % prereq          "prereq"     >
<!ENTITY % postreq        "postreq"    >
<!ENTITY % steps            "steps"         >
<!ENTITY % step              "step"          >
<!ENTITY % substeps      "substeps"  >
<!ENTITY % substep        "substep"   >
<!ENTITY % cmd              "cmd"         >
<!ENTITY % result           "result"       >
<!ENTITY % sli                 "sli"              >
<!ENTITY % sl                  "sl"               >
<!ENTITY % info              "info"           >
<!ENTITY % uicontrol     "uicontrol"  >
<!ENTITY % p                   "p"               >
<!ENTITY % b                   "b"               >
<!ENTITY % i                    "i"                >

<!ENTITY % task.content
                       "((%title;),
                         (%shortdesc;)?,
                         (%taskbody;))"
>

<!ENTITY % taskbody.content
                       "((%context;)?,
                         (%prereq;)?,
                         (%steps;)?,
                         (%result;)?,
                         (%postreq;)?)"
>

<!ENTITY % context.content 
  "
  (#PCDATA |
    %p; |
    %sl; |
    %note;)*
  ">

<!ENTITY % steps.content 
  "
  (#PCDATA |
    %step;)*
  ">

<!ENTITY % step.content 
  "
  (#PCDATA |
    %substeps; |
    %cmd; |
    %info;)*
  ">

<!ENTITY % cmd.content 
  "
  (#PCDATA |
    %uicontrol;)*
  ">

<!ENTITY % p.content 
  "
  (#PCDATA |
    %b; |
    %i; |
    %uicontrol;)*
  ">

<!ENTITY % info.content 
  "
  (#PCDATA |
    %p;)*
  ">

<!ENTITY % uicontrol.content 
  "
  (#PCDATA)*
  ">

<!ENTITY % title.content 
  "
  (#PCDATA)*
  ">

<!ENTITY % sli.content 
  "
  (#PCDATA |
    %b; |
    %i; |
    %uicontrol;)*
  ">

<!-- ============ End of constraint module -->