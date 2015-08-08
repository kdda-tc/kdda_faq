<?xml version="1.0" encoding="UTF-8"?>
<!-- ======================================
     Constraint Domain: Paragraphs with
     only highlight and ui domain elements.
     
     Copyright (c) 2015 KYOCERA Document Solutions Inc.
     
     ====================================== -->

<!ENTITY concept-constraints "(topic kddaConcept-c)" >

<!ENTITY % title           "title"             >
<!ENTITY % conbody   "conbody"     >
<!ENTITY % shortdesc "shortdesc"   >
<!ENTITY % note          "note"            >
<!ENTITY % ol               "ol"                 >
<!ENTITY % ul               "ul"                 >
<!ENTITY % sl                "sl"                 >
<!ENTITY % sli               "sli"                >
<!ENTITY % p                "p"                  >
<!ENTITY % b                "b"                  >
<!ENTITY % i                  "i"                  >
<!ENTITY % uicontrol   "uicontrol"   >

<!ENTITY % concept.content
                       "((%title;),
                         (%shortdesc;)?,
                         (%conbody;))"
>

<!ENTITY % conbody.content 
  "
  (#PCDATA |
    %p; |
    %sl; |
    %ul; |
    %ol; |
    %note;)*
  ">

<!ENTITY % note.content 
  "
  (#PCDATA |
    %p; |
    %sl;)*
  ">

<!ENTITY % p.content 
  "
  (#PCDATA |
    %b; |
    %i; |
    %uicontrol;)*
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

<!-- ============ End of constraint module === -->