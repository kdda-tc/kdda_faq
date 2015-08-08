<?xml version="1.0" encoding="UTF-8"?>
<!-- ===========================================
     Constraint Domain: Map
     Copyright (c) 2015 KYOCERA Document Solutions Inc.

     ========================================= -->

<!ENTITY map-constraints "(map kddaMap-c)" >

<!ENTITY % title           "title"             >
<!ENTITY % topicref    "topicref"       >

<!ENTITY % map.content
                       "((%title;),
                         (%topicref;)*)"
>

<!ENTITY % title.content 
  "
  (#PCDATA)*
  ">

<!-- ============ End of constraint module ====== -->