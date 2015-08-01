<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                           xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                           xmlns:xs="http://www.w3.org/2001/XMLSchema"
                           xmlns:locales="https://en.wikipedia.org/wiki/ISO_639"
                           exclude-result-prefixes="xs locales">

  <xsl:import href="faq_topic.xsl"/>

  <xsl:output method="xhtml" 
                       encoding="utf-8" 
                       indent="yes" 
                       omit-xml-declaration="yes"/>

  <xsl:strip-space  elements="*"/>

  <xsl:variable name="lang">
    <xsl:value-of select="@xml:lang"/>
  </xsl:variable>

  <xsl:variable name="product">
    <xsl:value-of select="*[contains(@class,' map/title ')][position() = 1]"/>
  </xsl:variable>

  <xsl:template match="/">
    <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;&#10;</xsl:text>
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang}" lang="{$lang}">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <title><xsl:value-of select="$product"/> FAQ</title>
    <meta name="Description" content=""/>
    <meta name="Keywords" content=""/>
    <meta http-equiv="content-script-type" content="text/javascript"/>
    <meta http-equiv="content-style-type" content="text/css"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta name="robots" content="index,follow"/>
    <meta name="dc.date" content="{format-date(current-date(), '[Y0001]-[M01]-[D01]')}"/>
    <meta name="viewport" content="width=device-width,user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="/data/css/responsive/common.css"/>
    <link rel="stylesheet" type="text/css" href="/data/css/responsive/header.css"/>
    <link rel="stylesheet" type="text/css" href="/support/common/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/support/common/css/style_breakpoint_1.css"/>
    <link rel="stylesheet" type="text/css" href="/support/common/css/style_breakpoint_2.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/data/js/v5/en/jquery-1.8.1.min.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/data/js/v5/en/jquery-ui-1.9.1.custom.min.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/data/js/v5/en/augment.min.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/data/js/responsive/base.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="js/faq.config.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="js/faq.config.en.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="js/faq.config.en.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/support/common/js/faq.category_list.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/support/common/js/faq.answer_section.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/support/common/js/faq.analytics.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/support/common/js/faq.misc.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/support/common/js/faq.jquery.toggle_menu.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/support/common/js/faq.init.js"></script><xsl:text>&#10;</xsl:text>
    <script type="text/javascript" src="/support/common/js/faq.main.js"></script><xsl:text>&#10;</xsl:text>
  </head>
  <body>
<xsl:text disable-output-escaping="yes">&#10;  &lt;!--#include virtual="/data/include/gtm.html" --&gt;&#10;</xsl:text>
    <div id="all"><xsl:text>&#10;</xsl:text>
      <xsl:text disable-output-escaping="yes">&lt;!--#include virtual="/data/include/responsive/header.html" --&gt;&#10;</xsl:text>
      <div class="location_area"><xsl:text>&#10;</xsl:text>
        <p class="location"><a href="/download/index.html">Support &amp; Download</a>&#160;&gt;&#160;<strong><xsl:value-of select="$product"/></strong></p><xsl:text>&#10;</xsl:text>
      </div><xsl:text>&#10;</xsl:text>
      <div id="content"><xsl:text>&#10;</xsl:text>
        <div id="content_header"><xsl:text>&#10;</xsl:text>
          <img src="images/pict_large_printer.gif" alt="" class="header_icon" /><xsl:text>&#10;</xsl:text>
          <h1 class="header_message"><a href="./"><xsl:value-of select="$product"/> <br/>FAQ</a></h1>
          <xsl:text disable-output-escaping="yes">&#10;               &lt;!--#include virtual="include/lang_menu.html" --&gt;&#10;</xsl:text>
        </div><xsl:text disable-output-escaping="yes">&lt;!-- /#content_header --&gt;&#10;</xsl:text>
        <div id="content_body">
          <div id="answer_section">
<!-- START APPLY TEMPLATES -->
  <xsl:for-each select="*[contains(@class,' map/topicref ')]">
    <xsl:variable name="nav" select="@navtitle"/>
    <xsl:apply-templates select="document(@href)/*[contains(@class,' topic/concept ')]">
      <xsl:with-param name="navtitle" select="$nav"/>
    </xsl:apply-templates>
  </xsl:for-each>
<!-- END APPLY TEMPLATES -->
<xsl:text>&#10;</xsl:text></div><xsl:text disable-output-escaping="yes">&lt;!-- /#answer_section --&gt;</xsl:text>
          <div id="category_list">
            <ul><!-- APPLY CAT LIST -->
              <xsl:for-each select="*[contains(@class,' map/topicref ')]">
                <xsl:variable name="navi" select="@navtitle"/>
                <xsl:variable name="topic" select="document(@href)/*[contains(@class,' topic/title ')]"/>
                <li id="{concat('button_', $navi)}">
                  
                  <xsl:if test="(position() mod 3 = 0) or (position() = last())">
                    <xsl:attribute name="class">
                      <xsl:value-of select="'end'"/>
                    </xsl:attribute>
                  </xsl:if>

                  <a href="{concat('#', $navi)}" class="category_button">
                    <xsl:value-of select="$topic"/>
                  </a>
                </li>
                </xsl:for-each>
             </ul><!-- END CAT LIST -->
          </div><xsl:text disable-output-escaping="yes">&lt;!-- /#category_list --&gt;</xsl:text>
          <div id="bottom_menu">
            <xsl:text disable-output-escaping="yes">&#10;             &lt;!--#include virtual="include/contact_menu.html" --&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&#10;             &lt;!--#include virtual="include/app_link.html" --&gt;&#10;</xsl:text>
          </div><xsl:text disable-output-escaping="yes">&lt;!-- /#bottom_menu --&gt;</xsl:text>
        </div><xsl:text disable-output-escaping="yes">&lt;!-- /#content_body --&gt;</xsl:text>
      </div><xsl:text disable-output-escaping="yes">&lt;!-- /#content --&gt;&#10;</xsl:text>
      <xsl:text disable-output-escaping="yes">      &lt;!--#include virtual="/data/include/responsive/footer.html" --&gt;&#10;</xsl:text>
      <xsl:text disable-output-escaping="yes">      &lt;!--#include virtual="/data/include/responsive/overlay.html" --&gt;</xsl:text>
    </div>
  </body>
  <xsl:text disable-output-escaping="yes">&lt;!--#include virtual="/data/include/beacon.html" --&gt;</xsl:text>
</html>
  </xsl:template>


  <xsl:function name="locales:getLangCode" as="xs:string">
    <xsl:param name="lang" as="xs:string"/>
    <xsl:variable name="abbreviations" as="xs:string *"
      select="'en', 'de', 'es', 'fr', 'it', 'ja', 
              'ko', 'pt', 'zh-cn', 'zh-tw'"/>
    <xsl:variable name="langCodes" as="xs:string *"
      select="'en-US', 'de-DE', 'es-ES', 'fr-FR', 'it-IT', 'ja-JP', 
              'ko-KR', 'pt-BR', 'zh-CN', 'zh-TW'"/>
    <xsl:variable name="index" as="xs:integer"
      select="if (count(index-of($langCodes, $lang)) gt 0)
              then subsequence(index-of($langCodes, $lang), 1, 1)
              else 0"/>
    <xsl:value-of select="if ($index gt 0)
                          then string(subsequence($abbreviations, $index, 1))
                          else ''"/>
  </xsl:function> 

</xsl:stylesheet>