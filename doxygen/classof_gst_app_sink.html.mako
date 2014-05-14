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
<a href="classof_gst_app_sink-members.html">List of all members</a>  </div>
  <div class="headertitle">
<div class="title">ofGstAppSink Class Reference</div>  </div>
</div><!--header-->
<div class="contents">

<p><code>#include &lt;<a class="el" href="of_gst_utils_8h_source.html">ofGstUtils.h</a>&gt;</code></p>
<div class="dynheader">
Inheritance diagram for ofGstAppSink:</div>
<div class="dyncontent">
 <div class="center">
  <img src="classof_gst_app_sink.png" usemap="#ofGstAppSink_map" alt=""/>
  <map id="ofGstAppSink_map" name="ofGstAppSink_map">
<area href="classof_gst_video_player.html" alt="ofGstVideoPlayer" shape="rect" coords="0,56,111,80"/>
</map>
 </div></div>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pub-methods"></a>
Public Member Functions</h2></td></tr>
<tr class="memitem:a1ef19747dc2e526984d2c39b454a5ac9"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_gst_app_sink.html#a1ef19747dc2e526984d2c39b454a5ac9">~ofGstAppSink</a> ()</td></tr>
<tr class="separator:a1ef19747dc2e526984d2c39b454a5ac9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9f9a13d8ae5b86820e509dd398ccdbb8"><td class="memItemLeft" align="right" valign="top">virtual GstFlowReturn&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_gst_app_sink.html#a9f9a13d8ae5b86820e509dd398ccdbb8">on_preroll</a> (<a class="el" href="of_gst_utils_8h.html#ac11ed7be42911220f7c186fca44f9ce1">GstBuffer</a> *buffer)</td></tr>
<tr class="separator:a9f9a13d8ae5b86820e509dd398ccdbb8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9357d95da1452f3143d8a3bafb888ee8"><td class="memItemLeft" align="right" valign="top">virtual GstFlowReturn&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_gst_app_sink.html#a9357d95da1452f3143d8a3bafb888ee8">on_buffer</a> (<a class="el" href="of_gst_utils_8h.html#ac11ed7be42911220f7c186fca44f9ce1">GstBuffer</a> *buffer)</td></tr>
<tr class="separator:a9357d95da1452f3143d8a3bafb888ee8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a03b003d1a338cf12be908d7f0138fb3e"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_gst_app_sink.html#a03b003d1a338cf12be908d7f0138fb3e">on_eos</a> ()</td></tr>
<tr class="separator:a03b003d1a338cf12be908d7f0138fb3e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a60f84fb94bb4b9edca99684f9b4dde63"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_gst_app_sink.html#a60f84fb94bb4b9edca99684f9b4dde63">on_message</a> (<a class="el" href="of_gst_utils_8h.html#adc3505fab8b4df6ebbfeb7074120da30">GstMessage</a> *msg)</td></tr>
<tr class="separator:a60f84fb94bb4b9edca99684f9b4dde63"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2f0e2897c2967e2ec442e81a4af89ddc"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_gst_app_sink.html#a2f0e2897c2967e2ec442e81a4af89ddc">on_stream_prepared</a> ()</td></tr>
<tr class="separator:a2f0e2897c2967e2ec442e81a4af89ddc"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<a class="anchor" id="a1ef19747dc2e526984d2c39b454a5ac9"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual ofGstAppSink::~ofGstAppSink </td>
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
<a class="anchor" id="a9357d95da1452f3143d8a3bafb888ee8"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual GstFlowReturn ofGstAppSink::on_buffer </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="of_gst_utils_8h.html#ac11ed7be42911220f7c186fca44f9ce1">GstBuffer</a> *&#160;</td>
          <td class="paramname"><em>buffer</em>)</td><td></td>
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
<a class="anchor" id="a03b003d1a338cf12be908d7f0138fb3e"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual void ofGstAppSink::on_eos </td>
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
<a class="anchor" id="a60f84fb94bb4b9edca99684f9b4dde63"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual bool ofGstAppSink::on_message </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="of_gst_utils_8h.html#adc3505fab8b4df6ebbfeb7074120da30">GstMessage</a> *&#160;</td>
          <td class="paramname"><em>msg</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Reimplemented in <a class="el" href="classof_gst_video_player.html#a30a1c4b0d176b6b8bbebf7875e4a4782">ofGstVideoPlayer</a>.</p>

</div>
</div>
<a class="anchor" id="a9f9a13d8ae5b86820e509dd398ccdbb8"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual GstFlowReturn ofGstAppSink::on_preroll </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="of_gst_utils_8h.html#ac11ed7be42911220f7c186fca44f9ce1">GstBuffer</a> *&#160;</td>
          <td class="paramname"><em>buffer</em>)</td><td></td>
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
<a class="anchor" id="a2f0e2897c2967e2ec442e81a4af89ddc"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual void ofGstAppSink::on_stream_prepared </td>
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

<p>Reimplemented in <a class="el" href="classof_gst_video_player.html#ac3d97ba6cd0b922dab0fe8c4717d8071">ofGstVideoPlayer</a>.</p>

</div>
</div>
<hr/>The documentation for this class was generated from the following file:<ul>
<li>/home/arturo/Desktop/openFrameworks/libs/openFrameworks/video/<a class="el" href="of_gst_utils_8h_source.html">ofGstUtils.h</a></li>
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
