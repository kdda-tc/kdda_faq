<?xml version="1.0" encoding="UTF-8"?>
<!-- ======================================
     Constraint Domain: Paragraphs with
     only highlight domain or ui domain elements.
     
     Copyright (c) 2015 KYOCERA Document Solutions Inc.
     
     ====================================== -->

<!ENTITY topic-constraints "(topic kddaTopic-c)" >

<!ENTITY % body           "body"          >
<!ENTITY % title             "title"            >
<!ENTITY % shortdesc   "shortdesc"  >
<!ENTITY % p                  "p"                 >
<!ENTITY % tm                "tm"              >

<!ENTITY % topic.content
                       "((%title;),
                         (%shortdesc;)?,
                         (%body;))"
>

<!ENTITY % title.content 
  "
  (#PCDATA)*
  ">

<!ENTITY % shortdesc.content 
  "
  (#PCDATA)*
  ">

<!ENTITY % body.content 
  "
  (#PCDATA |
    %p;)*
  ">

<!ENTITY % p.content 
  "
  (#PCDATA |
    %tm;)*
  ">


<!-- ============ End of constraint module -->