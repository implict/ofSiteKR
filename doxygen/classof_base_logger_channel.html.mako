<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta name="generator" content="Doxygen 1.8.3.1"/>
    <title>openFrameworks: Class Index</title>
    <link href="tabs.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="dynsections.js"></script>
    <link href="search/search.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="search/search.js"></script>
    <script type="text/javascript">
      $(document).ready(function() { searchBox.OnSelectItem(0); });
    </script>
    <link href="doxygen.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div id="content">
      ${self.header()}
      <div id="body-wrap">
      		<div class="page-wide">
	            <div class="page-left-split">
           		    <h1 class="documentation">reference</h1> <ul class="docsadvanced"><li><a href="/documentation">basic</a></li> <li><a  class="active" href="/doxygen/annotated.html">advanced</a></li> </ul>
           		</div>
		        <div class="page-right-narrow">
			        <p>This documentation is automatically generated from the openFrameworks source code using doxygen and refers to the most recent release, version <strong>${bf.config.currentVersion}</strong>.</p>
		        </div>
       		</div>
      		<div class="page-wide">
      		    <div class="doxy-mainmenu">
<!-- Generated by Doxygen 1.8.4 -->
  <div id="navrow1" class="tabs">
    <ul class="tablist">
      <li><a href="index.html"><span>Main&#160;Page</span></a></li>
      <li><a href="pages.html"><span>Related&#160;Pages</span></a></li>
      <li><a href="namespaces.html"><span>Namespaces</span></a></li>
      <li class="current"><a href="annotated.html"><span>Classes</span></a></li>
      <li><a href="files.html"><span>Files</span></a></li>
    </ul>
  </div>
  <div id="navrow2" class="tabs2">
    <ul class="tablist">
      <li><a href="annotated.html"><span>Class&#160;List</span></a></li>
      <li><a href="classes.html"><span>Class&#160;Index</span></a></li>
      <li><a href="hierarchy.html"><span>Class&#160;Hierarchy</span></a></li>
      <li><a href="functions.html"><span>Class&#160;Members</span></a></li>
    </ul>
  </div>
</div><!-- top -->
<div class="header">
  <div class="summary">
<a href="#pub-methods">Public Member Functions</a> &#124;
<a href="classof_base_logger_channel-members.html">List of all members</a>  </div>
  <div class="headertitle">
<div class="title">ofBaseLoggerChannel Class Reference<span class="mlabels"><span class="mlabel">abstract</span></span></div>  </div>
</div><!--header-->
<div class="contents">

<p><code>#include &lt;<a class="el" href="of_log_8h_source.html">ofLog.h</a>&gt;</code></p>
<div class="dynheader">
Inheritance diagram for ofBaseLoggerChannel:</div>
<div class="dyncontent">
 <div class="center">
  <img src="classof_base_logger_channel.png" usemap="#ofBaseLoggerChannel_map" alt=""/>
  <map id="ofBaseLoggerChannel_map" name="ofBaseLoggerChannel_map">
<area href="classof_console_logger_channel.html" alt="ofConsoleLoggerChannel" shape="rect" coords="0,56,156,80"/>
<area href="classof_file_logger_channel.html" alt="ofFileLoggerChannel" shape="rect" coords="166,56,322,80"/>
</map>
 </div></div>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pub-methods"></a>
Public Member Functions</h2></td></tr>
<tr class="memitem:ad25596521f5df6c781fd2668c829c50e"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_logger_channel.html#ad25596521f5df6c781fd2668c829c50e">~ofBaseLoggerChannel</a> ()</td></tr>
<tr class="separator:ad25596521f5df6c781fd2668c829c50e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41859e4af28dd6263df054666a5fe58f"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_logger_channel.html#a41859e4af28dd6263df054666a5fe58f">log</a> (<a class="el" href="of_log_8h.html#a6b3aba959377cae6ed3afbb9d5826fe4">ofLogLevel</a> level, const string &amp;module, const string &amp;message)=0</td></tr>
<tr class="separator:a41859e4af28dd6263df054666a5fe58f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8730d4e192935d84238b645d0866548f"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_logger_channel.html#a8730d4e192935d84238b645d0866548f">log</a> (<a class="el" href="of_log_8h.html#a6b3aba959377cae6ed3afbb9d5826fe4">ofLogLevel</a> level, const string &amp;module, const char *format,...)=0</td></tr>
<tr class="separator:a8730d4e192935d84238b645d0866548f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a83ff10e99279f145285daa1e096bbeaa"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_logger_channel.html#a83ff10e99279f145285daa1e096bbeaa">log</a> (<a class="el" href="of_log_8h.html#a6b3aba959377cae6ed3afbb9d5826fe4">ofLogLevel</a> level, const string &amp;module, const char *format, va_list args)=0</td></tr>
<tr class="separator:a83ff10e99279f145285daa1e096bbeaa"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<div class="textblock"><h1><a class="anchor" id="Logger"></a>
Channels</h1>
<p>swappable logging destinations, derive your own for custom logging </p>
</div><h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<a class="anchor" id="ad25596521f5df6c781fd2668c829c50e"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual ofBaseLoggerChannel::~ofBaseLoggerChannel </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Member Function Documentation</h2>
<a class="anchor" id="a41859e4af28dd6263df054666a5fe58f"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual void ofBaseLoggerChannel::log </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="of_log_8h.html#a6b3aba959377cae6ed3afbb9d5826fe4">ofLogLevel</a>&#160;</td>
          <td class="paramname"><em>level</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const string &amp;&#160;</td>
          <td class="paramname"><em>module</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const string &amp;&#160;</td>
          <td class="paramname"><em>message</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implemented in <a class="el" href="classof_file_logger_channel.html#a6508d0b263dfbb3c3b73f28fed4116e6">ofFileLoggerChannel</a>, and <a class="el" href="classof_console_logger_channel.html#aa07ecce14277c0eaeae57c2078619394">ofConsoleLoggerChannel</a>.</p>

</div>
</div>
<a class="anchor" id="a8730d4e192935d84238b645d0866548f"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual void ofBaseLoggerChannel::log </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="of_log_8h.html#a6b3aba959377cae6ed3afbb9d5826fe4">ofLogLevel</a>&#160;</td>
          <td class="paramname"><em>level</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const string &amp;&#160;</td>
          <td class="paramname"><em>module</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const char *&#160;</td>
          <td class="paramname"><em>format</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">&#160;</td>
          <td class="paramname"><em>...</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implemented in <a class="el" href="classof_file_logger_channel.html#ab18cba0b2ded364630dd9b2230776642">ofFileLoggerChannel</a>, and <a class="el" href="classof_console_logger_channel.html#ad47d80b1bc4a21c0df60d70f6f39cf75">ofConsoleLoggerChannel</a>.</p>

</div>
</div>
<a class="anchor" id="a83ff10e99279f145285daa1e096bbeaa"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual void ofBaseLoggerChannel::log </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="of_log_8h.html#a6b3aba959377cae6ed3afbb9d5826fe4">ofLogLevel</a>&#160;</td>
          <td class="paramname"><em>level</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const string &amp;&#160;</td>
          <td class="paramname"><em>module</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const char *&#160;</td>
          <td class="paramname"><em>format</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">va_list&#160;</td>
          <td class="paramname"><em>args</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implemented in <a class="el" href="classof_file_logger_channel.html#a7cabc7ebbd2afb8c569c1afeb0e734e8">ofFileLoggerChannel</a>, and <a class="el" href="classof_console_logger_channel.html#a9ccdb08eec51a78e0b8126c67014ec55">ofConsoleLoggerChannel</a>.</p>

</div>
</div>
<hr/>The documentation for this class was generated from the following file:<ul>
<li>/home/arturo/Desktop/openFrameworks/libs/openFrameworks/utils/<a class="el" href="of_log_8h_source.html">ofLog.h</a></li>
</ul>
</div><!-- contents -->

            </div>
      </div>
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>
<%def name="header()">
  <%include file="header.mako" args="active='documentation'" />
</%def>
