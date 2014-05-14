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
<a href="classof_sound_stream-members.html">List of all members</a>  </div>
  <div class="headertitle">
<div class="title">ofSoundStream Class Reference</div>  </div>
</div><!--header-->
<div class="contents">

<p>Gives access to audio input and output devices.  
 <a href="classof_sound_stream.html#details">More...</a></p>

<p><code>#include &lt;<a class="el" href="of_sound_stream_8h_source.html">ofSoundStream.h</a>&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pub-methods"></a>
Public Member Functions</h2></td></tr>
<tr class="memitem:a47d4cd0827208597bf116bc6fd954c00"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a47d4cd0827208597bf116bc6fd954c00">ofSoundStream</a> ()</td></tr>
<tr class="separator:a47d4cd0827208597bf116bc6fd954c00"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ade40e7f39e918994c45c82121e341643"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#ade40e7f39e918994c45c82121e341643">setSoundStream</a> (<a class="el" href="classof_ptr.html">ofPtr</a>&lt; <a class="el" href="classof_base_sound_stream.html">ofBaseSoundStream</a> &gt; soundStreamPtr)</td></tr>
<tr class="separator:ade40e7f39e918994c45c82121e341643"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a646214476abc2b65545e31fb5a7facd7"><td class="memItemLeft" align="right" valign="top"><a class="el" href="classof_ptr.html">ofPtr</a>&lt; <a class="el" href="classof_base_sound_stream.html">ofBaseSoundStream</a> &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a646214476abc2b65545e31fb5a7facd7">getSoundStream</a> ()</td></tr>
<tr class="separator:a646214476abc2b65545e31fb5a7facd7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7ab3c672a357f1b30c8e3b7db6b14fc7"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a7ab3c672a357f1b30c8e3b7db6b14fc7">listDevices</a> ()</td></tr>
<tr class="memdesc:a7ab3c672a357f1b30c8e3b7db6b14fc7"><td class="mdescLeft">&#160;</td><td class="mdescRight">prints a list of available audio devices to the console.  <a href="#a7ab3c672a357f1b30c8e3b7db6b14fc7">More...</a><br/></td></tr>
<tr class="separator:a7ab3c672a357f1b30c8e3b7db6b14fc7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab09bcde2d99186c5a5889da94fec5132"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#ab09bcde2d99186c5a5889da94fec5132">setDeviceID</a> (int deviceID)</td></tr>
<tr class="memdesc:ab09bcde2d99186c5a5889da94fec5132"><td class="mdescLeft">&#160;</td><td class="mdescRight">sets the device represented by the stream, see <a class="el" href="classof_sound_stream.html#a7ab3c672a357f1b30c8e3b7db6b14fc7" title="prints a list of available audio devices to the console. ">ofSoundStream::listDevices()</a>.  <a href="#ab09bcde2d99186c5a5889da94fec5132">More...</a><br/></td></tr>
<tr class="separator:ab09bcde2d99186c5a5889da94fec5132"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6e608c0034437ca0152a1fce35c11af5"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a6e608c0034437ca0152a1fce35c11af5">setup</a> (<a class="el" href="classof_base_app.html">ofBaseApp</a> *app, int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)</td></tr>
<tr class="memdesc:a6e608c0034437ca0152a1fce35c11af5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets up and starts the stream.  <a href="#a6e608c0034437ca0152a1fce35c11af5">More...</a><br/></td></tr>
<tr class="separator:a6e608c0034437ca0152a1fce35c11af5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acb80fe32014433d50d453bf161b45505"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#acb80fe32014433d50d453bf161b45505">setup</a> (int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)</td></tr>
<tr class="memdesc:acb80fe32014433d50d453bf161b45505"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets up and starts the stream.  <a href="#acb80fe32014433d50d453bf161b45505">More...</a><br/></td></tr>
<tr class="separator:acb80fe32014433d50d453bf161b45505"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab7d7d424d44688489a79e53e3faf1131"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#ab7d7d424d44688489a79e53e3faf1131">setInput</a> (<a class="el" href="classof_base_sound_input.html">ofBaseSoundInput</a> *soundInput)</td></tr>
<tr class="memdesc:ab7d7d424d44688489a79e53e3faf1131"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets the object which will have audioIn() called when the device receives audio.  <a href="#ab7d7d424d44688489a79e53e3faf1131">More...</a><br/></td></tr>
<tr class="separator:ab7d7d424d44688489a79e53e3faf1131"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abc67980c13dd58bd16c3362c1d87c28e"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#abc67980c13dd58bd16c3362c1d87c28e">setOutput</a> (<a class="el" href="classof_base_sound_output.html">ofBaseSoundOutput</a> *soundOutput)</td></tr>
<tr class="memdesc:abc67980c13dd58bd16c3362c1d87c28e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets the object which will have audioOut() called when the device requests audio.  <a href="#abc67980c13dd58bd16c3362c1d87c28e">More...</a><br/></td></tr>
<tr class="separator:abc67980c13dd58bd16c3362c1d87c28e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a841b585c0c00e5c1475462cee9c86455"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a841b585c0c00e5c1475462cee9c86455">start</a> ()</td></tr>
<tr class="memdesc:a841b585c0c00e5c1475462cee9c86455"><td class="mdescLeft">&#160;</td><td class="mdescRight">Starts a stream (note that <a class="el" href="classof_sound_stream.html#a6e608c0034437ca0152a1fce35c11af5" title="Sets up and starts the stream. ">setup()</a> will start the stream on its own).  <a href="#a841b585c0c00e5c1475462cee9c86455">More...</a><br/></td></tr>
<tr class="separator:a841b585c0c00e5c1475462cee9c86455"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7204c4627954ec04e6fd86d3f1b05400"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a7204c4627954ec04e6fd86d3f1b05400">stop</a> ()</td></tr>
<tr class="memdesc:a7204c4627954ec04e6fd86d3f1b05400"><td class="mdescLeft">&#160;</td><td class="mdescRight">Stops the stream.  <a href="#a7204c4627954ec04e6fd86d3f1b05400">More...</a><br/></td></tr>
<tr class="separator:a7204c4627954ec04e6fd86d3f1b05400"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4e7be9ede60368dcbe1566b6a7c7937b"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a4e7be9ede60368dcbe1566b6a7c7937b">close</a> ()</td></tr>
<tr class="memdesc:a4e7be9ede60368dcbe1566b6a7c7937b"><td class="mdescLeft">&#160;</td><td class="mdescRight">stops the stream and cleans up its resources.  <a href="#a4e7be9ede60368dcbe1566b6a7c7937b">More...</a><br/></td></tr>
<tr class="separator:a4e7be9ede60368dcbe1566b6a7c7937b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7987c9afe679fa80a41a622338e181d5"><td class="memItemLeft" align="right" valign="top">long unsigned long&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a7987c9afe679fa80a41a622338e181d5">getTickCount</a> ()</td></tr>
<tr class="memdesc:a7987c9afe679fa80a41a622338e181d5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Queries the number of "ticks" passed since the stream started.  <a href="#a7987c9afe679fa80a41a622338e181d5">More...</a><br/></td></tr>
<tr class="separator:a7987c9afe679fa80a41a622338e181d5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acad14341e4a7eafb7b7b8012d6745feb"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#acad14341e4a7eafb7b7b8012d6745feb">getNumInputChannels</a> ()</td></tr>
<tr class="memdesc:acad14341e4a7eafb7b7b8012d6745feb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Queries the stream's number of input channels.  <a href="#acad14341e4a7eafb7b7b8012d6745feb">More...</a><br/></td></tr>
<tr class="separator:acad14341e4a7eafb7b7b8012d6745feb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6c5cd61d04e29c2473d2cd1a5a93543a"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a6c5cd61d04e29c2473d2cd1a5a93543a">getNumOutputChannels</a> ()</td></tr>
<tr class="memdesc:a6c5cd61d04e29c2473d2cd1a5a93543a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Queries the stream's number of output channels.  <a href="#a6c5cd61d04e29c2473d2cd1a5a93543a">More...</a><br/></td></tr>
<tr class="separator:a6c5cd61d04e29c2473d2cd1a5a93543a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6637b6fc50ffb7df5f32829bc5b6ef50"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a6637b6fc50ffb7df5f32829bc5b6ef50">getSampleRate</a> ()</td></tr>
<tr class="memdesc:a6637b6fc50ffb7df5f32829bc5b6ef50"><td class="mdescLeft">&#160;</td><td class="mdescRight">Queries the stream's sample rate.  <a href="#a6637b6fc50ffb7df5f32829bc5b6ef50">More...</a><br/></td></tr>
<tr class="separator:a6637b6fc50ffb7df5f32829bc5b6ef50"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adac81ab108d13712887591e2985f99b4"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#adac81ab108d13712887591e2985f99b4">getBufferSize</a> ()</td></tr>
<tr class="memdesc:adac81ab108d13712887591e2985f99b4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Queries the stream's buffer size.  <a href="#adac81ab108d13712887591e2985f99b4">More...</a><br/></td></tr>
<tr class="separator:adac81ab108d13712887591e2985f99b4"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pro-attribs"></a>
Protected Attributes</h2></td></tr>
<tr class="memitem:a9360c4f62ffaafa2f0eede977b57ad05"><td class="memItemLeft" align="right" valign="top"><a class="el" href="classof_ptr.html">ofPtr</a>&lt; <a class="el" href="classof_base_sound_stream.html">ofBaseSoundStream</a> &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="classof_sound_stream.html#a9360c4f62ffaafa2f0eede977b57ad05">soundStream</a></td></tr>
<tr class="separator:a9360c4f62ffaafa2f0eede977b57ad05"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<div class="textblock"><p>Gives access to audio input and output devices. </p>
<p><a class="el" href="classof_sound_stream.html" title="Gives access to audio input and output devices. ">ofSoundStream</a> controls access to your computer's audio input and output devices. For example, you could use an <a class="el" href="classof_sound_stream.html" title="Gives access to audio input and output devices. ">ofSoundStream</a> to get live input from a microphone, or generate sound in realtime for your computer's speakers.</p>
<p>A typical openFrameworks app will use just one <a class="el" href="classof_sound_stream.html" title="Gives access to audio input and output devices. ">ofSoundStream</a>, and you might not even need to use this class directly at all if you don't need to query things like the sample rate or buffer size. In order to start receiving or generating audio, your ofApp should implement either <a class="el" href="classof_base_sound_input.html#a27614c83263da3af6ba55f91ec651b70">ofBaseApp::audioIn()</a> or <a class="el" href="classof_base_sound_output.html#affbe31ef262e3fad9bbb70538523c191">ofBaseApp::audioOut()</a> respectively, and then call <a class="el" href="of_sound_stream_8cpp.html#a80beb9b0117e2ce24c6a54cf2404185c" title="Sets up and starts a global ofSoundStream. ">ofSoundStreamSetup()</a>. You can find examples of this in either the audioInputExample or the audioOutputExample.</p>
<p>Starting a stream with 0 input or output channels will prevent audioIn() or audioOut() from being called, respectively.</p>
<p>Some platforms (iOS, for example) will expose additional platform-specific sound stream functionality. See the platform-specific examples for demos.</p>
<dl class="section warning"><dt>Warning</dt><dd>Be aware that audioIn() and audioOut() will be called on a different thread from your app's update() / draw() thread. </dd></dl>
</div><h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<a class="anchor" id="a47d4cd0827208597bf116bc6fd954c00"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">ofSoundStream::ofSoundStream </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Member Function Documentation</h2>
<a class="anchor" id="a4e7be9ede60368dcbe1566b6a7c7937b"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofSoundStream::close </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>stops the stream and cleans up its resources. </p>

</div>
</div>
<a class="anchor" id="adac81ab108d13712887591e2985f99b4"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">int ofSoundStream::getBufferSize </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Queries the stream's buffer size. </p>
<dl class="section return"><dt>Returns</dt><dd>the current buffer size of the stream. </dd></dl>

</div>
</div>
<a class="anchor" id="acad14341e4a7eafb7b7b8012d6745feb"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">int ofSoundStream::getNumInputChannels </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Queries the stream's number of input channels. </p>
<dl class="section return"><dt>Returns</dt><dd>the number of input channels (e.g. 2 for stereo). </dd></dl>

</div>
</div>
<a class="anchor" id="a6c5cd61d04e29c2473d2cd1a5a93543a"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">int ofSoundStream::getNumOutputChannels </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Queries the stream's number of output channels. </p>
<dl class="section return"><dt>Returns</dt><dd>the number of output channels (e.g. 2 for stereo). </dd></dl>

</div>
</div>
<a class="anchor" id="a6637b6fc50ffb7df5f32829bc5b6ef50"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">int ofSoundStream::getSampleRate </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Queries the stream's sample rate. </p>
<dl class="section return"><dt>Returns</dt><dd>the current sample rate of the stream </dd></dl>
<dl class="section note"><dt>Note</dt><dd>The returned sample rate may differ from the requested sample rate. </dd></dl>

</div>
</div>
<a class="anchor" id="a646214476abc2b65545e31fb5a7facd7"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="classof_ptr.html">ofPtr</a>&lt; <a class="el" href="classof_base_sound_stream.html">ofBaseSoundStream</a> &gt; ofSoundStream::getSoundStream </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a7987c9afe679fa80a41a622338e181d5"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">long unsigned long ofSoundStream::getTickCount </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Queries the number of "ticks" passed since the stream started. </p>
<p>This is a representation of how many buffers have passed through the stream since it started. This can be converted to seconds with the following formula:</p>
<p>secondsOfPlayback = (tickCount * bufferSize) / sampleRate</p>
<dl class="section return"><dt>Returns</dt><dd>number of buffers passed through the stream since it started. </dd></dl>

</div>
</div>
<a class="anchor" id="a7ab3c672a357f1b30c8e3b7db6b14fc7"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofSoundStream::listDevices </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>prints a list of available audio devices to the console. </p>

</div>
</div>
<a class="anchor" id="ab09bcde2d99186c5a5889da94fec5132"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofSoundStream::setDeviceID </td>
          <td>(</td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>deviceID</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>sets the device represented by the stream, see <a class="el" href="classof_sound_stream.html#a7ab3c672a357f1b30c8e3b7db6b14fc7" title="prints a list of available audio devices to the console. ">ofSoundStream::listDevices()</a>. </p>

</div>
</div>
<a class="anchor" id="ab7d7d424d44688489a79e53e3faf1131"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofSoundStream::setInput </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="classof_base_sound_input.html">ofBaseSoundInput</a> *&#160;</td>
          <td class="paramname"><em>soundInput</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Sets the object which will have audioIn() called when the device receives audio. </p>

</div>
</div>
<a class="anchor" id="abc67980c13dd58bd16c3362c1d87c28e"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofSoundStream::setOutput </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="classof_base_sound_output.html">ofBaseSoundOutput</a> *&#160;</td>
          <td class="paramname"><em>soundOutput</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Sets the object which will have audioOut() called when the device requests audio. </p>

</div>
</div>
<a class="anchor" id="ade40e7f39e918994c45c82121e341643"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofSoundStream::setSoundStream </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="classof_ptr.html">ofPtr</a>&lt; <a class="el" href="classof_base_sound_stream.html">ofBaseSoundStream</a> &gt;&#160;</td>
          <td class="paramname"><em>soundStreamPtr</em>)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a class="anchor" id="a6e608c0034437ca0152a1fce35c11af5"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">bool ofSoundStream::setup </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="classof_base_app.html">ofBaseApp</a> *&#160;</td>
          <td class="paramname"><em>app</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>outChannels</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>inChannels</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>sampleRate</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>bufferSize</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>nBuffers</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Sets up and starts the stream. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramname">app</td><td>pointer to the app which will own the sound stream. </td></tr>
    <tr><td class="paramname">outChannels</td><td>number of requested output channels (i.e. 2 for stereo). </td></tr>
    <tr><td class="paramname">inChannels</td><td>number of requested input channels. </td></tr>
    <tr><td class="paramname">sampleRate</td><td>requested sample rate (44100 is typical). </td></tr>
    <tr><td class="paramname">bufferSize</td><td>requested buffer size (256 is typical). Smaller values will be more responsive, but less stable. </td></tr>
    <tr><td class="paramname">nBuffers</td><td>number of buffers to queue. Less buffers will be more responsive, but less stable. </td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>true on success </dd></dl>

</div>
</div>
<a class="anchor" id="acb80fe32014433d50d453bf161b45505"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">bool ofSoundStream::setup </td>
          <td>(</td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>outChannels</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>inChannels</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>sampleRate</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>bufferSize</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>nBuffers</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Sets up and starts the stream. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramname">outChannels</td><td>number of requested output channels (i.e. 2 for stereo). </td></tr>
    <tr><td class="paramname">inChannels</td><td>number of requested input channels. </td></tr>
    <tr><td class="paramname">sampleRate</td><td>requested sample rate (44100 is typical). </td></tr>
    <tr><td class="paramname">bufferSize</td><td>requested buffer size (256 is typical). Smaller values will be more responsive, but less stable. </td></tr>
    <tr><td class="paramname">nBuffers</td><td>number of buffers to queue. Less buffers will be more responsive, but less stable. </td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>true on success </dd></dl>

</div>
</div>
<a class="anchor" id="a841b585c0c00e5c1475462cee9c86455"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofSoundStream::start </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Starts a stream (note that <a class="el" href="classof_sound_stream.html#a6e608c0034437ca0152a1fce35c11af5" title="Sets up and starts the stream. ">setup()</a> will start the stream on its own). </p>

</div>
</div>
<a class="anchor" id="a7204c4627954ec04e6fd86d3f1b05400"></a>
<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void ofSoundStream::stop </td>
          <td>(</td>
          <td class="paramname">)</td><td></td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Stops the stream. </p>

</div>
</div>
<h2 class="groupheader">Member Data Documentation</h2>
<a class="anchor" id="a9360c4f62ffaafa2f0eede977b57ad05"></a>
<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="classof_ptr.html">ofPtr</a>&lt;<a class="el" href="classof_base_sound_stream.html">ofBaseSoundStream</a>&gt; ofSoundStream::soundStream</td>
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
<hr/>The documentation for this class was generated from the following files:<ul>
<li>/home/arturo/Desktop/openFrameworks/libs/openFrameworks/sound/<a class="el" href="of_sound_stream_8h_source.html">ofSoundStream.h</a></li>
<li>/home/arturo/Desktop/openFrameworks/libs/openFrameworks/sound/<a class="el" href="of_sound_stream_8cpp.html">ofSoundStream.cpp</a></li>
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
