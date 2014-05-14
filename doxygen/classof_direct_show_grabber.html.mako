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
<a href="#pro-attribs">Protected Attributes</a> &#124;
<a href="classof_direct_show_grabber-members.html">List of all members</a>  </div>
  <div class="headertitle">
<div class="title">ofDirectShowGrabber Class Reference</div>  </div>
</div><!--header-->
<div class="contents">

<p><code>#include &lt;<a class="el" href="of_direct_show_grabber_8h_source.html">ofDirectShowGrabber.h</a>&gt;</code></p>
<div class="dynheader">
Inheritance diagram for ofDirectShowGrabber:</div>
<div class="dyncontent">
 <div class="center">
  <img src="classof_direct_show_grabber.png" usemap="#ofDirectShowGrabber_map" alt=""/>
  <map id="ofDirectShowGrabber_map" name="ofDirectShowGrabber_map">
<area href="classof_base_video_grabber.html" alt="ofBaseVideoGrabber" shape="rect" coords="114,168,333,192"/>
<area href="classof_base_video.html" alt="ofBaseVideo" shape="rect" coords="114,112,333,136"/>
<area href="classof_base_has_pixels__.html" alt="ofBaseHasPixels_&lt; T &gt;" shape="rect" coords="0,56,219,80"/>
<area href="classof_base_updates.html" alt="ofBaseUpdates" shape="rect" coords="229,56,448,80"/>
<area href="classof_abstract_has_pixels.html" alt="ofAbstractHasPixels" shape="rect" coords="0,0,219,24"/>
</map>
 </div></div>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pub-methods"></a>
Public Member Functions</h2></td></tr>
<tr class="memitem:ad72b0b119b33d4c8272738392b906814"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#ad72b0b119b33d4c8272738392b906814">ofDirectShowGrabber</a> ()</td></tr>
<tr class="separator:ad72b0b119b33d4c8272738392b906814"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3e543194a4bff70a5707ed3fbc518e5e"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a3e543194a4bff70a5707ed3fbc518e5e">~ofDirectShowGrabber</a> ()</td></tr>
<tr class="separator:a3e543194a4bff70a5707ed3fbc518e5e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad3698093f39452d9d0fab8932336d7ca"><td class="memItemLeft" align="right" valign="top">vector&lt; <a class="el" href="classof_video_device.html">ofVideoDevice</a> &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#ad3698093f39452d9d0fab8932336d7ca">listDevices</a> ()</td></tr>
<tr class="separator:ad3698093f39452d9d0fab8932336d7ca"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a185b01c9f15aa39113c4c9cdc093f05f"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a185b01c9f15aa39113c4c9cdc093f05f">initGrabber</a> (int w, int h)</td></tr>
<tr class="separator:a185b01c9f15aa39113c4c9cdc093f05f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1038c645d3d298f22e28789ae923c21a"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a1038c645d3d298f22e28789ae923c21a">update</a> ()</td></tr>
<tr class="separator:a1038c645d3d298f22e28789ae923c21a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a81859b980eeb27cd285c435f9c500188"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a81859b980eeb27cd285c435f9c500188">isFrameNew</a> ()</td></tr>
<tr class="separator:a81859b980eeb27cd285c435f9c500188"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1ef00d2680e8fb4af95169b71fca4af7"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a1ef00d2680e8fb4af95169b71fca4af7">setPixelFormat</a> (<a class="el" href="of_constants_8h.html#ae227396622740556688053d3dc0f1693">ofPixelFormat</a> pixelFormat)</td></tr>
<tr class="separator:a1ef00d2680e8fb4af95169b71fca4af7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7f810d2c52b46e099ab4231b24951b93"><td class="memItemLeft" align="right" valign="top"><a class="el" href="of_constants_8h.html#ae227396622740556688053d3dc0f1693">ofPixelFormat</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a7f810d2c52b46e099ab4231b24951b93">getPixelFormat</a> ()</td></tr>
<tr class="separator:a7f810d2c52b46e099ab4231b24951b93"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acc815e60b8edd19f443a5e2ac0caa893"><td class="memItemLeft" align="right" valign="top">unsigned char *&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#acc815e60b8edd19f443a5e2ac0caa893">getPixels</a> ()</td></tr>
<tr class="separator:acc815e60b8edd19f443a5e2ac0caa893"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aee0f557356afd74a692e6453277f9d0c"><td class="memItemLeft" align="right" valign="top"><a class="el" href="of_pixels_8h.html#af934cec3ae4fc641202e2c1f48c182db">ofPixelsRef</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#aee0f557356afd74a692e6453277f9d0c">getPixelsRef</a> ()</td></tr>
<tr class="separator:aee0f557356afd74a692e6453277f9d0c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a28a14fb712670f3adb146cea7301c0a5"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a28a14fb712670f3adb146cea7301c0a5">close</a> ()</td></tr>
<tr class="separator:a28a14fb712670f3adb146cea7301c0a5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7f3d9d8aea91c7467dd62723f4afb7b6"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a7f3d9d8aea91c7467dd62723f4afb7b6">clearMemory</a> ()</td></tr>
<tr class="separator:a7f3d9d8aea91c7467dd62723f4afb7b6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a01a1f41cc1c4db5b062211f6b5f32089"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a01a1f41cc1c4db5b062211f6b5f32089">videoSettings</a> ()</td></tr>
<tr class="separator:a01a1f41cc1c4db5b062211f6b5f32089"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af3506788cee6a2dae8e4c7c3425a8a05"><td class="memItemLeft" align="right" valign="top">float&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#af3506788cee6a2dae8e4c7c3425a8a05">getWidth</a> ()</td></tr>
<tr class="separator:af3506788cee6a2dae8e4c7c3425a8a05"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af9774c3107f0a4665fb48d32f8af7fcd"><td class="memItemLeft" align="right" valign="top">float&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#af9774c3107f0a4665fb48d32f8af7fcd">getHeight</a> ()</td></tr>
<tr class="separator:af9774c3107f0a4665fb48d32f8af7fcd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a92384fe1da5f91d33d977cd84232db7f"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a92384fe1da5f91d33d977cd84232db7f">setVerbose</a> (bool bTalkToMe)</td></tr>
<tr class="separator:a92384fe1da5f91d33d977cd84232db7f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af15df017688112c8e1381e3e7170995d"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#af15df017688112c8e1381e3e7170995d">setDeviceID</a> (int _deviceID)</td></tr>
<tr class="separator:af15df017688112c8e1381e3e7170995d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae59bdb914b1419a1f1c51e628b18ce85"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#ae59bdb914b1419a1f1c51e628b18ce85">setDesiredFrameRate</a> (int framerate)</td></tr>
<tr class="separator:ae59bdb914b1419a1f1c51e628b18ce85"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classof_base_video_grabber"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classof_base_video_grabber')"><img src="closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="classof_base_video_grabber.html">ofBaseVideoGrabber</a></td></tr>
<tr class="memitem:ae26d74772c498046a1c2f2765b45b77d inherit pub_methods_classof_base_video_grabber"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_video_grabber.html#ae26d74772c498046a1c2f2765b45b77d">~ofBaseVideoGrabber</a> ()</td></tr>
<tr class="separator:ae26d74772c498046a1c2f2765b45b77d inherit pub_methods_classof_base_video_grabber"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a205fd82be77957342ec7c255021d8862 inherit pub_methods_classof_base_video_grabber"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="classof_texture.html">ofTexture</a> *&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_video_grabber.html#a205fd82be77957342ec7c255021d8862">getTexture</a> ()</td></tr>
<tr class="separator:a205fd82be77957342ec7c255021d8862 inherit pub_methods_classof_base_video_grabber"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classof_base_video"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classof_base_video')"><img src="closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="classof_base_video.html">ofBaseVideo</a></td></tr>
<tr class="memitem:af8004a840c98637ba7572b2c34bbc249 inherit pub_methods_classof_base_video"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_video.html#af8004a840c98637ba7572b2c34bbc249">~ofBaseVideo</a> ()</td></tr>
<tr class="separator:af8004a840c98637ba7572b2c34bbc249 inherit pub_methods_classof_base_video"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classof_base_has_pixels__"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classof_base_has_pixels__')"><img src="closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="classof_base_has_pixels__.html">ofBaseHasPixels_&lt; T &gt;</a></td></tr>
<tr class="memitem:a62cfed9db02b38b104b6870a542031ee inherit pub_methods_classof_base_has_pixels__"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_has_pixels__.html#a62cfed9db02b38b104b6870a542031ee">~ofBaseHasPixels_</a> ()</td></tr>
<tr class="separator:a62cfed9db02b38b104b6870a542031ee inherit pub_methods_classof_base_has_pixels__"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classof_abstract_has_pixels"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classof_abstract_has_pixels')"><img src="closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="classof_abstract_has_pixels.html">ofAbstractHasPixels</a></td></tr>
<tr class="memitem:ad47946469061dbdfbe106f61e80a1b33 inherit pub_methods_classof_abstract_has_pixels"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_abstract_has_pixels.html#ad47946469061dbdfbe106f61e80a1b33">~ofAbstractHasPixels</a> ()</td></tr>
<tr class="separator:ad47946469061dbdfbe106f61e80a1b33 inherit pub_methods_classof_abstract_has_pixels"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classof_base_updates"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classof_base_updates')"><img src="closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="classof_base_updates.html">ofBaseUpdates</a></td></tr>
<tr class="memitem:a48cbac34caf49b4b72092888a7e63b27 inherit pub_methods_classof_base_updates"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_base_updates.html#a48cbac34caf49b4b72092888a7e63b27">~ofBaseUpdates</a> ()</td></tr>
<tr class="separator:a48cbac34caf49b4b72092888a7e63b27 inherit pub_methods_classof_base_updates"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pro-attribs"></a>
Protected Attributes</h2></td></tr>
<tr class="memitem:a98652e43d56a0ca7348bfb499a358332"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a98652e43d56a0ca7348bfb499a358332">bChooseDevice</a></td></tr>
<tr class="separator:a98652e43d56a0ca7348bfb499a358332"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae6d3b2c4d5be516fcf2b49949d36dea3"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#ae6d3b2c4d5be516fcf2b49949d36dea3">deviceID</a></td></tr>
<tr class="separator:ae6d3b2c4d5be516fcf2b49949d36dea3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a85b8884f98fafd219ba4dd498009369b"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a85b8884f98fafd219ba4dd498009369b">bVerbose</a></td></tr>
<tr class="separator:a85b8884f98fafd219ba4dd498009369b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa195aef0c58a52063e33eccf8a111302"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#aa195aef0c58a52063e33eccf8a111302">bGrabberInited</a></td></tr>
<tr class="separator:aa195aef0c58a52063e33eccf8a111302"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1e60bb08d30b40b2077f1bb2621145fb"><td class="memItemLeft" align="right" valign="top"><a class="el" href="of_pixels_8h.html#a590f460ea8c9e40214543c26ca3b386a">ofPixels</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a1e60bb08d30b40b2077f1bb2621145fb">pixels</a></td></tr>
<tr class="separator:a1e60bb08d30b40b2077f1bb2621145fb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afe7398fb9e3860ac319659ee05b4c942"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#afe7398fb9e3860ac319659ee05b4c942">attemptFramerate</a></td></tr>
<tr class="separator:afe7398fb9e3860ac319659ee05b4c942"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2431de7722ab123e2169eab96d93740d"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a2431de7722ab123e2169eab96d93740d">bIsFrameNew</a></td></tr>
<tr class="separator:a2431de7722ab123e2169eab96d93740d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0a11fb872c39fd7b9da44392fedd1073"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#a0a11fb872c39fd7b9da44392fedd1073">width</a></td></tr>
<tr class="separator:a0a11fb872c39fd7b9da44392fedd1073"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab1764d4234140856765aa119ee641626"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_direct_show_grabber.html#ab1764d4234140856765aa119ee641626">height</a></td></tr>
<tr class="separator:ab1764d4234140856765aa119ee641626"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<a class="anchor" id="ad72b0b119b33d4c8272738392b906814"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">ofDirectShowGrabber::ofDirectShowGrabber </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a3e543194a4bff70a5707ed3fbc518e5e"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">virtual ofDirectShowGrabber::~ofDirectShowGrabber </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Member Function Documentation</h2>
<a class="anchor" id="a7f3d9d8aea91c7467dd62723f4afb7b6"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofDirectShowGrabber::clearMemory </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a28a14fb712670f3adb146cea7301c0a5"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">void ofDirectShowGrabber::close </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#a8c7237c2cf5d2aac261d37a0fc22a2a3">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="af9774c3107f0a4665fb48d32f8af7fcd"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">float ofDirectShowGrabber::getHeight </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#adc370b3e10351d456a70c3097e5a25bd">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="a7f810d2c52b46e099ab4231b24951b93"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="of_constants_8h.html#ae227396622740556688053d3dc0f1693">ofPixelFormat</a> ofDirectShowGrabber::getPixelFormat </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#a12a7f28ad6d9b0c98233aa43468ec188">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="acc815e60b8edd19f443a5e2ac0caa893"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">unsigned char* ofDirectShowGrabber::getPixels </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#a7a9d9dc85963036f16d937cee730f654">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="aee0f557356afd74a692e6453277f9d0c"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="of_pixels_8h.html#af934cec3ae4fc641202e2c1f48c182db">ofPixelsRef</a> ofDirectShowGrabber::getPixelsRef </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_has_pixels__.html#a0e74503eeea2afb44a8f5d6b65422f45">ofBaseHasPixels_&lt; T &gt;</a>.</p>

</div>
</div>
<a class="anchor" id="af3506788cee6a2dae8e4c7c3425a8a05"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">float ofDirectShowGrabber::getWidth </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#a92e4e75c73b92c7eb3da31cdfbf9927e">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="a185b01c9f15aa39113c4c9cdc093f05f"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">bool ofDirectShowGrabber::initGrabber </td>
          <td>(</td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>w</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>h</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#a7dc4e14ca5c1bf64f6c9ef49fff421e3">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="a81859b980eeb27cd285c435f9c500188"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">bool ofDirectShowGrabber::isFrameNew </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#a49571efac6ac055c07b5147e15a98643">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="ad3698093f39452d9d0fab8932336d7ca"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">vector&lt;<a class="el" href="classof_video_device.html">ofVideoDevice</a>&gt; ofDirectShowGrabber::listDevices </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#ae82f0a1c87fe69c86f1738cae560efb2">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="ae59bdb914b1419a1f1c51e628b18ce85"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">void ofDirectShowGrabber::setDesiredFrameRate </td>
          <td>(</td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>framerate</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Reimplemented from <a class="el" href="classof_base_video_grabber.html#a16846e532be7f6e80516cc12568afd00">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="af15df017688112c8e1381e3e7170995d"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">void ofDirectShowGrabber::setDeviceID </td>
          <td>(</td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>_deviceID</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Reimplemented from <a class="el" href="classof_base_video_grabber.html#a557779bf16372e5fe66a401606780954">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="a1ef00d2680e8fb4af95169b71fca4af7"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">bool ofDirectShowGrabber::setPixelFormat </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="of_constants_8h.html#ae227396622740556688053d3dc0f1693">ofPixelFormat</a>&#160;</td>
          <td class="paramname"><em>pixelFormat</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#aff13867515988c85201029f07be63c6d">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="a92384fe1da5f91d33d977cd84232db7f"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">void ofDirectShowGrabber::setVerbose </td>
          <td>(</td>
          <td class="paramtype">bool&#160;</td>
          <td class="paramname"><em>bTalkToMe</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Reimplemented from <a class="el" href="classof_base_video_grabber.html#a936b9b488373760e66fab3dea78a975c">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="a1038c645d3d298f22e28789ae923c21a"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">void ofDirectShowGrabber::update </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Implements <a class="el" href="classof_base_video_grabber.html#afa0adff5581f2aeb2f2973a5686097de">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<a class="anchor" id="a01a1f41cc1c4db5b062211f6b5f32089"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">void ofDirectShowGrabber::videoSettings </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Reimplemented from <a class="el" href="classof_base_video_grabber.html#a940fe78603fc08b111cf329047f9429d">ofBaseVideoGrabber</a>.</p>

</div>
</div>
<h2 class="groupheader">Member Data Documentation</h2>
<a class="anchor" id="afe7398fb9e3860ac319659ee05b4c942"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">int ofDirectShowGrabber::attemptFramerate</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a98652e43d56a0ca7348bfb499a358332"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">bool ofDirectShowGrabber::bChooseDevice</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="aa195aef0c58a52063e33eccf8a111302"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">bool ofDirectShowGrabber::bGrabberInited</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a2431de7722ab123e2169eab96d93740d"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">bool ofDirectShowGrabber::bIsFrameNew</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a85b8884f98fafd219ba4dd498009369b"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">bool ofDirectShowGrabber::bVerbose</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="ae6d3b2c4d5be516fcf2b49949d36dea3"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">int ofDirectShowGrabber::deviceID</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="ab1764d4234140856765aa119ee641626"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">int ofDirectShowGrabber::height</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a1e60bb08d30b40b2077f1bb2621145fb"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="of_pixels_8h.html#a590f460ea8c9e40214543c26ca3b386a">ofPixels</a> ofDirectShowGrabber::pixels</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a0a11fb872c39fd7b9da44392fedd1073"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">int ofDirectShowGrabber::width</td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<hr/>The documentation for this class was generated from the following file:<ul>
<li>/home/arturo/Desktop/openFrameworks/libs/openFrameworks/video/<a class="el" href="of_direct_show_grabber_8h_source.html">ofDirectShowGrabber.h</a></li>
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
