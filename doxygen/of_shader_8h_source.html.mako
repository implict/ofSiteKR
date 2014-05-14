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
      <li><a href="annotated.html"><span>Classes</span></a></li>
      <li class="current"><a href="files.html"><span>Files</span></a></li>
    </ul>
  </div>
  <div id="navrow2" class="tabs2">
    <ul class="tablist">
      <li><a href="files.html"><span>File&#160;List</span></a></li>
      <li><a href="globals.html"><span>File&#160;Members</span></a></li>
    </ul>
  </div>
<div id="nav-path" class="navpath">
  <ul>
<li class="navelem"><a class="el" href="dir_84d5b34cee6369a03c8d1f3b970ed216.html">openFrameworks</a></li><li class="navelem"><a class="el" href="dir_21a7ba6abdb7e89b57a67631dad1eaf5.html">gl</a></li>  </ul>
</div>
</div><!-- top -->
<div class="header">
  <div class="headertitle">
<div class="title">ofShader.h</div>  </div>
</div><!--header-->
<div class="contents">
<a href="of_shader_8h.html">Go to the documentation of this file.</a><div class="fragment"><div class="line"><a name="l00001"></a><span class="lineno">    1</span>&#160;<span class="preprocessor">#pragma once</span></div>
<div class="line"><a name="l00002"></a><span class="lineno">    2</span>&#160;<span class="preprocessor"></span></div>
<div class="line"><a name="l00003"></a><span class="lineno">    3</span>&#160;</div>
<div class="line"><a name="l00004"></a><span class="lineno">    4</span>&#160;<span class="comment">/*</span></div>
<div class="line"><a name="l00005"></a><span class="lineno">    5</span>&#160;<span class="comment"> todo: add support for attachment of multiple shaders</span></div>
<div class="line"><a name="l00006"></a><span class="lineno">    6</span>&#160;<span class="comment"> if a uniform or attribute isn&#39;t available, this will cause an error</span></div>
<div class="line"><a name="l00007"></a><span class="lineno">    7</span>&#160;<span class="comment"> make sure to catch and report that error.</span></div>
<div class="line"><a name="l00008"></a><span class="lineno">    8</span>&#160;<span class="comment"> */</span></div>
<div class="line"><a name="l00009"></a><span class="lineno">    9</span>&#160;</div>
<div class="line"><a name="l00010"></a><span class="lineno">   10</span>&#160;<span class="preprocessor">#include &quot;<a class="code" href="of_constants_8h.html">ofConstants.h</a>&quot;</span></div>
<div class="line"><a name="l00011"></a><span class="lineno">   11</span>&#160;<span class="preprocessor">#include &quot;<a class="code" href="of_base_types_8h.html">ofBaseTypes.h</a>&quot;</span></div>
<div class="line"><a name="l00012"></a><span class="lineno">   12</span>&#160;<span class="preprocessor">#include &quot;<a class="code" href="of_texture_8h.html">ofTexture.h</a>&quot;</span></div>
<div class="line"><a name="l00013"></a><span class="lineno">   13</span>&#160;<span class="preprocessor">#include &quot;<a class="code" href="of_matrix4x4_8h.html">ofMatrix4x4.h</a>&quot;</span></div>
<div class="line"><a name="l00014"></a><span class="lineno">   14</span>&#160;<span class="preprocessor">#include &quot;Poco/RegularExpression.h&quot;</span></div>
<div class="line"><a name="l00015"></a><span class="lineno">   15</span>&#160;<span class="preprocessor">#include &lt;map&gt;</span></div>
<div class="line"><a name="l00016"></a><span class="lineno">   16</span>&#160;<span class="preprocessor">#include &quot;<a class="code" href="of_app_base_window_8h.html">ofAppBaseWindow.h</a>&quot;</span></div>
<div class="line"><a name="l00017"></a><span class="lineno">   17</span>&#160;</div>
<div class="line"><a name="l00018"></a><span class="lineno"><a class="code" href="classof_shader.html">   18</a></span>&#160;<span class="keyword">class </span><a class="code" href="classof_shader.html">ofShader</a> {</div>
<div class="line"><a name="l00019"></a><span class="lineno">   19</span>&#160;<span class="keyword">public</span>:</div>
<div class="line"><a name="l00020"></a><span class="lineno">   20</span>&#160;    <a class="code" href="classof_shader.html#a73584392e61ecc25d966ae14a13f23ec">ofShader</a>();</div>
<div class="line"><a name="l00021"></a><span class="lineno">   21</span>&#160;    <a class="code" href="classof_shader.html#aee5d2be9eab7b3385685be54e5010c96">~ofShader</a>();</div>
<div class="line"><a name="l00022"></a><span class="lineno">   22</span>&#160;    <a class="code" href="classof_shader.html#a73584392e61ecc25d966ae14a13f23ec">ofShader</a>(<span class="keyword">const</span> <a class="code" href="classof_shader.html">ofShader</a> &amp; shader);</div>
<div class="line"><a name="l00023"></a><span class="lineno">   23</span>&#160;    <a class="code" href="classof_shader.html">ofShader</a> &amp; <a class="code" href="classof_shader.html#abe78f7292a99e590663523280301b669">operator=</a>(<span class="keyword">const</span> <a class="code" href="classof_shader.html">ofShader</a> &amp; shader);</div>
<div class="line"><a name="l00024"></a><span class="lineno">   24</span>&#160;    </div>
<div class="line"><a name="l00025"></a><span class="lineno">   25</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#abba5155402a941f1b8b638afae439ffe">load</a>(<span class="keywordtype">string</span> shaderName);</div>
<div class="line"><a name="l00026"></a><span class="lineno">   26</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#abba5155402a941f1b8b638afae439ffe">load</a>(<span class="keywordtype">string</span> vertName, <span class="keywordtype">string</span> fragName, <span class="keywordtype">string</span> geomName=<span class="stringliteral">&quot;&quot;</span>);</div>
<div class="line"><a name="l00027"></a><span class="lineno">   27</span>&#160;    </div>
<div class="line"><a name="l00028"></a><span class="lineno">   28</span>&#160;    </div>
<div class="line"><a name="l00029"></a><span class="lineno">   29</span>&#160;    </div>
<div class="line"><a name="l00030"></a><span class="lineno">   30</span>&#160;    <span class="comment">// these are essential to call before linking the program with geometry shaders</span></div>
<div class="line"><a name="l00031"></a><span class="lineno">   31</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a2e3bda5d5244a4ec2370046eaab6f7f6">setGeometryInputType</a>(GLenum type); <span class="comment">// type: GL_POINTS, GL_LINES, GL_LINES_ADJACENCY_EXT, GL_TRIANGLES, GL_TRIANGLES_ADJACENCY_EXT</span></div>
<div class="line"><a name="l00032"></a><span class="lineno">   32</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ae0f6ba661570808249ca3f2b277360d2">setGeometryOutputType</a>(GLenum type); <span class="comment">// type: GL_POINTS, GL_LINE_STRIP or GL_TRIANGLE_STRIP</span></div>
<div class="line"><a name="l00033"></a><span class="lineno">   33</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a089717c95700eeb56425aa05bc2a60af">setGeometryOutputCount</a>(<span class="keywordtype">int</span> count); <span class="comment">// set number of output vertices</span></div>
<div class="line"><a name="l00034"></a><span class="lineno">   34</span>&#160;    </div>
<div class="line"><a name="l00035"></a><span class="lineno">   35</span>&#160;    <span class="keywordtype">int</span> <a class="code" href="classof_shader.html#aabeb035a6f923127a058da522bd842c6">getGeometryMaxOutputCount</a>();        <span class="comment">// returns maximum number of supported vertices</span></div>
<div class="line"><a name="l00036"></a><span class="lineno">   36</span>&#160;</div>
<div class="line"><a name="l00037"></a><span class="lineno">   37</span>&#160;</div>
<div class="line"><a name="l00038"></a><span class="lineno">   38</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a197c00e9547fc5962c7318c13fa5ba0d">unload</a>();</div>
<div class="line"><a name="l00039"></a><span class="lineno">   39</span>&#160;    </div>
<div class="line"><a name="l00040"></a><span class="lineno">   40</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#acc5a0cc4424e03b9a052927f3d581841">isLoaded</a>();</div>
<div class="line"><a name="l00041"></a><span class="lineno">   41</span>&#160;</div>
<div class="line"><a name="l00042"></a><span class="lineno">   42</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a54bff8ba8e22f85d9be9fbb47430a73d">begin</a>();</div>
<div class="line"><a name="l00043"></a><span class="lineno">   43</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a3892fee400619365da5d5724a957a001">end</a>();</div>
<div class="line"><a name="l00044"></a><span class="lineno">   44</span>&#160;    </div>
<div class="line"><a name="l00045"></a><span class="lineno">   45</span>&#160;    <span class="comment">// set a texture reference</span></div>
<div class="line"><a name="l00046"></a><span class="lineno">   46</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a8b3dfcd48f67ce173318ad4846974bb5">setUniformTexture</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <a class="code" href="classof_base_has_texture.html">ofBaseHasTexture</a>&amp; img, <span class="keywordtype">int</span> textureLocation);</div>
<div class="line"><a name="l00047"></a><span class="lineno">   47</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a8b3dfcd48f67ce173318ad4846974bb5">setUniformTexture</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <a class="code" href="classof_texture.html" title="An OpenGL image on the the graphics card. ">ofTexture</a>&amp; img, <span class="keywordtype">int</span> textureLocation);</div>
<div class="line"><a name="l00048"></a><span class="lineno">   48</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a8b3dfcd48f67ce173318ad4846974bb5">setUniformTexture</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span> textureTarget, GLint textureID, <span class="keywordtype">int</span> textureLocation);</div>
<div class="line"><a name="l00049"></a><span class="lineno">   49</span>&#160;    </div>
<div class="line"><a name="l00050"></a><span class="lineno">   50</span>&#160;    <span class="comment">// set a single uniform value</span></div>
<div class="line"><a name="l00051"></a><span class="lineno">   51</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a9a6aef6460a60cbdd877a7978e315ddd">setUniform1i</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span> v1);</div>
<div class="line"><a name="l00052"></a><span class="lineno">   52</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a2179e58133437c2869c1fe15fa0f143d">setUniform2i</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span> v1, <span class="keywordtype">int</span> v2);</div>
<div class="line"><a name="l00053"></a><span class="lineno">   53</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a3648f39ed9a3b07c065f25fe579ab2d5">setUniform3i</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span> v1, <span class="keywordtype">int</span> v2, <span class="keywordtype">int</span> v3);</div>
<div class="line"><a name="l00054"></a><span class="lineno">   54</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a5c4f4b804919be7ca21bc24b0acf04d8">setUniform4i</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span> v1, <span class="keywordtype">int</span> v2, <span class="keywordtype">int</span> v3, <span class="keywordtype">int</span> v4);</div>
<div class="line"><a name="l00055"></a><span class="lineno">   55</span>&#160;    </div>
<div class="line"><a name="l00056"></a><span class="lineno">   56</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ad3f452decf2dd384143e0f58c740ef97">setUniform1f</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span> v1);</div>
<div class="line"><a name="l00057"></a><span class="lineno">   57</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ae739f5c2b3d93ad33bbfe2f433464fd6">setUniform2f</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span> v1, <span class="keywordtype">float</span> v2);</div>
<div class="line"><a name="l00058"></a><span class="lineno">   58</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a076becb85c27f56bf2d14cb4f99320be">setUniform3f</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span> v1, <span class="keywordtype">float</span> v2, <span class="keywordtype">float</span> v3);</div>
<div class="line"><a name="l00059"></a><span class="lineno">   59</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a3d8da00e3724c9991481f6d395b30c63">setUniform4f</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span> v1, <span class="keywordtype">float</span> v2, <span class="keywordtype">float</span> v3, <span class="keywordtype">float</span> v4);</div>
<div class="line"><a name="l00060"></a><span class="lineno">   60</span>&#160;    </div>
<div class="line"><a name="l00061"></a><span class="lineno">   61</span>&#160;    <span class="comment">// set an array of uniform values</span></div>
<div class="line"><a name="l00062"></a><span class="lineno">   62</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a9e171fe26ef79246730d60b01615823d">setUniform1iv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span>* v, <span class="keywordtype">int</span> count = 1);</div>
<div class="line"><a name="l00063"></a><span class="lineno">   63</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a1c7a353b6b205e011e0c139ae877d79c">setUniform2iv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span>* v, <span class="keywordtype">int</span> count = 1);</div>
<div class="line"><a name="l00064"></a><span class="lineno">   64</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a81aa1221a1137afad914d874ec48588a">setUniform3iv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span>* v, <span class="keywordtype">int</span> count = 1);</div>
<div class="line"><a name="l00065"></a><span class="lineno">   65</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a3b30daa9ae3c7f235c4eb21db67f761b">setUniform4iv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">int</span>* v, <span class="keywordtype">int</span> count = 1);</div>
<div class="line"><a name="l00066"></a><span class="lineno">   66</span>&#160;    </div>
<div class="line"><a name="l00067"></a><span class="lineno">   67</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a09b6ded4f3c4e407014ec4aadb9f7f95">setUniform1fv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span>* v, <span class="keywordtype">int</span> count = 1);</div>
<div class="line"><a name="l00068"></a><span class="lineno">   68</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ae567162bd4b52a612bfee9d5e76df108">setUniform2fv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span>* v, <span class="keywordtype">int</span> count = 1);</div>
<div class="line"><a name="l00069"></a><span class="lineno">   69</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a187b3480cf31fa5547aa4741c30a66c8">setUniform3fv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span>* v, <span class="keywordtype">int</span> count = 1);</div>
<div class="line"><a name="l00070"></a><span class="lineno">   70</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#af0a0a91f5b2efa85200c005ff9216413">setUniform4fv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span>* v, <span class="keywordtype">int</span> count = 1);</div>
<div class="line"><a name="l00071"></a><span class="lineno">   71</span>&#160;    </div>
<div class="line"><a name="l00072"></a><span class="lineno">   72</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a912e561494906eee7eb826d9ed782317">setUniformMatrix4f</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keyword">const</span> <a class="code" href="classof_matrix4x4.html">ofMatrix4x4</a> &amp; m);</div>
<div class="line"><a name="l00073"></a><span class="lineno">   73</span>&#160;</div>
<div class="line"><a name="l00074"></a><span class="lineno">   74</span>&#160;    <span class="comment">// set attributes that vary per vertex (look up the location before glBegin)</span></div>
<div class="line"><a name="l00075"></a><span class="lineno">   75</span>&#160;    GLint <a class="code" href="classof_shader.html#a0d31c520f0c79ccfca473e21fc00e573">getAttributeLocation</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name);</div>
<div class="line"><a name="l00076"></a><span class="lineno">   76</span>&#160;</div>
<div class="line"><a name="l00077"></a><span class="lineno">   77</span>&#160;<span class="preprocessor">#ifndef TARGET_OPENGLES</span></div>
<div class="line"><a name="l00078"></a><span class="lineno">   78</span>&#160;<span class="preprocessor"></span>    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a55bf8d9beaf7994ba9c47b95e699c1ab">setAttribute1s</a>(GLint location, <span class="keywordtype">short</span> v1);</div>
<div class="line"><a name="l00079"></a><span class="lineno">   79</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#af401014dd74a493445b73f69564722bf">setAttribute2s</a>(GLint location, <span class="keywordtype">short</span> v1, <span class="keywordtype">short</span> v2);</div>
<div class="line"><a name="l00080"></a><span class="lineno">   80</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a4510988e4203c4c323b791edc07b27ed">setAttribute3s</a>(GLint location, <span class="keywordtype">short</span> v1, <span class="keywordtype">short</span> v2, <span class="keywordtype">short</span> v3);</div>
<div class="line"><a name="l00081"></a><span class="lineno">   81</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#af17f9c18017c6a795dc17e54238eaebb">setAttribute4s</a>(GLint location, <span class="keywordtype">short</span> v1, <span class="keywordtype">short</span> v2, <span class="keywordtype">short</span> v3, <span class="keywordtype">short</span> v4);</div>
<div class="line"><a name="l00082"></a><span class="lineno">   82</span>&#160;<span class="preprocessor">#endif</span></div>
<div class="line"><a name="l00083"></a><span class="lineno">   83</span>&#160;<span class="preprocessor"></span>    </div>
<div class="line"><a name="l00084"></a><span class="lineno">   84</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a673bd83d76efd08a60ed74bf1bbc010b">setAttribute1f</a>(GLint location, <span class="keywordtype">float</span> v1);</div>
<div class="line"><a name="l00085"></a><span class="lineno">   85</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#aab9c2bdc41a8570d9d5a7b547d0be7cf">setAttribute2f</a>(GLint location, <span class="keywordtype">float</span> v1, <span class="keywordtype">float</span> v2);</div>
<div class="line"><a name="l00086"></a><span class="lineno">   86</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a6ca96527727465f87edabebce5d876be">setAttribute3f</a>(GLint location, <span class="keywordtype">float</span> v1, <span class="keywordtype">float</span> v2, <span class="keywordtype">float</span> v3);</div>
<div class="line"><a name="l00087"></a><span class="lineno">   87</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a19686eb9a0dcde302abf8ad6cc7b1cfe">setAttribute4f</a>(GLint location, <span class="keywordtype">float</span> v1, <span class="keywordtype">float</span> v2, <span class="keywordtype">float</span> v3, <span class="keywordtype">float</span> v4);</div>
<div class="line"><a name="l00088"></a><span class="lineno">   88</span>&#160;</div>
<div class="line"><a name="l00089"></a><span class="lineno">   89</span>&#160;<span class="preprocessor">#ifndef TARGET_OPENGLES</span></div>
<div class="line"><a name="l00090"></a><span class="lineno">   90</span>&#160;<span class="preprocessor"></span>    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a61e0fae95154515a0dd93ace00ec620b">setAttribute1d</a>(GLint location, <span class="keywordtype">double</span> v1);</div>
<div class="line"><a name="l00091"></a><span class="lineno">   91</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ac63fbe28e0ea4d896b3cdbde2ab696d3">setAttribute2d</a>(GLint location, <span class="keywordtype">double</span> v1, <span class="keywordtype">double</span> v2);</div>
<div class="line"><a name="l00092"></a><span class="lineno">   92</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a1505e9dcc966de5d1af30cb303cc37d6">setAttribute3d</a>(GLint location, <span class="keywordtype">double</span> v1, <span class="keywordtype">double</span> v2, <span class="keywordtype">double</span> v3);</div>
<div class="line"><a name="l00093"></a><span class="lineno">   93</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ab5c3a280e90330004c5d1cbc516618b7">setAttribute4d</a>(GLint location, <span class="keywordtype">double</span> v1, <span class="keywordtype">double</span> v2, <span class="keywordtype">double</span> v3, <span class="keywordtype">double</span> v4);</div>
<div class="line"><a name="l00094"></a><span class="lineno">   94</span>&#160;<span class="preprocessor">#endif</span></div>
<div class="line"><a name="l00095"></a><span class="lineno">   95</span>&#160;<span class="preprocessor"></span></div>
<div class="line"><a name="l00096"></a><span class="lineno">   96</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a0e3fb11082b7c60645f40889d03c1c48">setAttribute1fv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span>* v, GLsizei stride=<span class="keyword">sizeof</span>(<span class="keywordtype">float</span>));</div>
<div class="line"><a name="l00097"></a><span class="lineno">   97</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a2f4f9266ab62ecc01c683b1ccddc28a5">setAttribute2fv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span>* v, GLsizei stride=<span class="keyword">sizeof</span>(<span class="keywordtype">float</span>)*2);</div>
<div class="line"><a name="l00098"></a><span class="lineno">   98</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a3ebbc2466fa8206b6cc5f602f162a9b2">setAttribute3fv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span>* v, GLsizei stride=<span class="keyword">sizeof</span>(<span class="keywordtype">float</span>)*3);</div>
<div class="line"><a name="l00099"></a><span class="lineno">   99</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ad28fb55122698873bf449b5abbd9f7ea">setAttribute4fv</a>(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name, <span class="keywordtype">float</span>* v, GLsizei stride=<span class="keyword">sizeof</span>(<span class="keywordtype">float</span>)*4);</div>
<div class="line"><a name="l00100"></a><span class="lineno">  100</span>&#160;    </div>
<div class="line"><a name="l00101"></a><span class="lineno">  101</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ac7f2a37ea7d9e9da43f7b669d8640b3b">bindAttribute</a>(GLuint location, <span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name);</div>
<div class="line"><a name="l00102"></a><span class="lineno">  102</span>&#160;</div>
<div class="line"><a name="l00103"></a><span class="lineno">  103</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#ab968eeb48a0026e6f50b92a90c7792d2">printActiveUniforms</a>();</div>
<div class="line"><a name="l00104"></a><span class="lineno">  104</span>&#160;    <span class="keywordtype">void</span> <a class="code" href="classof_shader.html#a7408b9e71d74dff3feb5f2248350cab8">printActiveAttributes</a>();</div>
<div class="line"><a name="l00105"></a><span class="lineno">  105</span>&#160;    </div>
<div class="line"><a name="l00106"></a><span class="lineno">  106</span>&#160;</div>
<div class="line"><a name="l00107"></a><span class="lineno">  107</span>&#160;    <span class="comment">// advanced use</span></div>
<div class="line"><a name="l00108"></a><span class="lineno">  108</span>&#160;    </div>
<div class="line"><a name="l00109"></a><span class="lineno">  109</span>&#160;    <span class="comment">// these methods create and compile a shader from source or file</span></div>
<div class="line"><a name="l00110"></a><span class="lineno">  110</span>&#160;    <span class="comment">// type: GL_VERTEX_SHADER, GL_FRAGMENT_SHADER, GL_GEOMETRY_SHADER_EXT etc.</span></div>
<div class="line"><a name="l00111"></a><span class="lineno">  111</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#acd3ab105df55d7759fea71d2e93849a3">setupShaderFromSource</a>(GLenum type, <span class="keywordtype">string</span> source, <span class="keywordtype">string</span> sourceDirectoryPath = <span class="stringliteral">&quot;&quot;</span>);</div>
<div class="line"><a name="l00112"></a><span class="lineno">  112</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#adef2885e7dc9e3875ed62b886a3f9695">setupShaderFromFile</a>(GLenum type, <span class="keywordtype">string</span> filename);</div>
<div class="line"><a name="l00113"></a><span class="lineno">  113</span>&#160;    </div>
<div class="line"><a name="l00114"></a><span class="lineno">  114</span>&#160;    <span class="comment">// links program with all compiled shaders</span></div>
<div class="line"><a name="l00115"></a><span class="lineno">  115</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#a0ea39cb41a521e637a641354299ccfb6">linkProgram</a>();</div>
<div class="line"><a name="l00116"></a><span class="lineno">  116</span>&#160;</div>
<div class="line"><a name="l00117"></a><span class="lineno">  117</span>&#160;    <span class="comment">// binds default uniforms and attributes, only useful for</span></div>
<div class="line"><a name="l00118"></a><span class="lineno">  118</span>&#160;    <span class="comment">// fixed pipeline simulation under programmable renderer</span></div>
<div class="line"><a name="l00119"></a><span class="lineno">  119</span>&#160;    <span class="comment">// has to be called before linking</span></div>
<div class="line"><a name="l00120"></a><span class="lineno">  120</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#af1f468e84f688a0e2871d9e3efbbacd8">bindDefaults</a>();</div>
<div class="line"><a name="l00121"></a><span class="lineno">  121</span>&#160;</div>
<div class="line"><a name="l00122"></a><span class="lineno">  122</span>&#160;    GLuint&amp; <a class="code" href="classof_shader.html#acf00bced0081d73f5108bcfafbdbcaf7">getProgram</a>();</div>
<div class="line"><a name="l00123"></a><span class="lineno">  123</span>&#160;    GLuint&amp; <a class="code" href="classof_shader.html#a3cc99d7a15f939c958a5839a06152686">getShader</a>(GLenum type);</div>
<div class="line"><a name="l00124"></a><span class="lineno">  124</span>&#160;    </div>
<div class="line"><a name="l00125"></a><span class="lineno">  125</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#a5174910279fb251688f635d060abaa6a">operator==</a>(<span class="keyword">const</span> <a class="code" href="classof_shader.html">ofShader</a> &amp; other);</div>
<div class="line"><a name="l00126"></a><span class="lineno">  126</span>&#160;    <span class="keywordtype">bool</span> <a class="code" href="classof_shader.html#a41324f504084099a4b84fd54d08789d4">operator!=</a>(<span class="keyword">const</span> <a class="code" href="classof_shader.html">ofShader</a> &amp; other);</div>
<div class="line"><a name="l00127"></a><span class="lineno">  127</span>&#160;</div>
<div class="line"><a name="l00128"></a><span class="lineno">  128</span>&#160;</div>
<div class="line"><a name="l00129"></a><span class="lineno">  129</span>&#160;    <span class="comment">// these are used only for openGL ES2 or GL3/4 using the programmable GL renderer</span></div>
<div class="line"><a name="l00130"></a><span class="lineno"><a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4dd">  130</a></span>&#160;    <span class="keyword">enum</span> <a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4dd">defaultAttributes</a>{</div>
<div class="line"><a name="l00131"></a><span class="lineno"><a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4dda4c0cb04f031969394a81ae621f524f85">  131</a></span>&#160;        <a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4dda4c0cb04f031969394a81ae621f524f85">POSITION_ATTRIBUTE</a>=0,  <span class="comment">// tig: was =1, and BOY, what a performance hog this was!!! see: http://www.chromium.org/nativeclient/how-tos/3d-tips-and-best-practices</span></div>
<div class="line"><a name="l00132"></a><span class="lineno"><a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4ddae648d060d89b376077d31ba9a9eebc29">  132</a></span>&#160;        <a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4ddae648d060d89b376077d31ba9a9eebc29">COLOR_ATTRIBUTE</a>,</div>
<div class="line"><a name="l00133"></a><span class="lineno"><a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4dda0db8ee2b57038410042266ee3cabb5c7">  133</a></span>&#160;        <a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4dda0db8ee2b57038410042266ee3cabb5c7">NORMAL_ATTRIBUTE</a>,</div>
<div class="line"><a name="l00134"></a><span class="lineno"><a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4dda7225a7535a27ab8a589e81dec085d37e">  134</a></span>&#160;        <a class="code" href="classof_shader.html#a9f35d6011294c2e93d33d5d5eb65f4dda7225a7535a27ab8a589e81dec085d37e">TEXCOORD_ATTRIBUTE</a></div>
<div class="line"><a name="l00135"></a><span class="lineno">  135</span>&#160;    };</div>
<div class="line"><a name="l00136"></a><span class="lineno">  136</span>&#160;</div>
<div class="line"><a name="l00139"></a><span class="lineno">  139</span>&#160;    <span class="keywordtype">string</span> <a class="code" href="classof_shader.html#ab204c35b749286fb5b4ee2f01bf8ca0f" title="returns the shader source as it was passed to the GLSL compiler ">getShaderSource</a>(GLenum type);</div>
<div class="line"><a name="l00140"></a><span class="lineno">  140</span>&#160;</div>
<div class="line"><a name="l00141"></a><span class="lineno">  141</span>&#160;</div>
<div class="line"><a name="l00142"></a><span class="lineno">  142</span>&#160;<span class="keyword">private</span>:</div>
<div class="line"><a name="l00143"></a><span class="lineno">  143</span>&#160;    GLuint program;</div>
<div class="line"><a name="l00144"></a><span class="lineno">  144</span>&#160;    <span class="keywordtype">bool</span> bLoaded;</div>
<div class="line"><a name="l00145"></a><span class="lineno">  145</span>&#160;    map&lt;GLenum, GLuint&gt; shaders;</div>
<div class="line"><a name="l00146"></a><span class="lineno">  146</span>&#160;    map&lt;string, GLint&gt; uniformLocations;</div>
<div class="line"><a name="l00147"></a><span class="lineno">  147</span>&#160;    map&lt;GLenum, string&gt; shaderSource;</div>
<div class="line"><a name="l00148"></a><span class="lineno">  148</span>&#160;    </div>
<div class="line"><a name="l00149"></a><span class="lineno">  149</span>&#160;    GLint getUniformLocation(<span class="keyword">const</span> <span class="keywordtype">string</span> &amp; name);</div>
<div class="line"><a name="l00150"></a><span class="lineno">  150</span>&#160;    </div>
<div class="line"><a name="l00151"></a><span class="lineno">  151</span>&#160;    <span class="keywordtype">void</span> checkProgramInfoLog(GLuint program);</div>
<div class="line"><a name="l00152"></a><span class="lineno">  152</span>&#160;    <span class="keywordtype">bool</span> checkProgramLinkStatus(GLuint program);</div>
<div class="line"><a name="l00153"></a><span class="lineno">  153</span>&#160;    <span class="keywordtype">void</span> checkShaderInfoLog(GLuint shader, GLenum type, <a class="code" href="of_log_8h.html#a6b3aba959377cae6ed3afbb9d5826fe4">ofLogLevel</a> logLevel);</div>
<div class="line"><a name="l00154"></a><span class="lineno">  154</span>&#160;    </div>
<div class="line"><a name="l00155"></a><span class="lineno">  155</span>&#160;    <span class="keyword">static</span> <span class="keywordtype">string</span> nameForType(GLenum type);</div>
<div class="line"><a name="l00156"></a><span class="lineno">  156</span>&#160;    </div>
<div class="line"><a name="l00163"></a><span class="lineno">  163</span>&#160;    <span class="keywordtype">string</span> parseForIncludes( <span class="keyword">const</span> <span class="keywordtype">string</span>&amp; source, <span class="keyword">const</span> <span class="keywordtype">string</span>&amp; sourceDirectoryPath = <span class="stringliteral">&quot;&quot;</span>);</div>
<div class="line"><a name="l00164"></a><span class="lineno">  164</span>&#160;    <span class="keywordtype">string</span> parseForIncludes( <span class="keyword">const</span> <span class="keywordtype">string</span>&amp; source, vector&lt;string&gt;&amp; included, <span class="keywordtype">int</span> level = 0, <span class="keyword">const</span> <span class="keywordtype">string</span>&amp; sourceDirectoryPath = <span class="stringliteral">&quot;&quot;</span>);</div>
<div class="line"><a name="l00165"></a><span class="lineno">  165</span>&#160;    </div>
<div class="line"><a name="l00166"></a><span class="lineno">  166</span>&#160;    <span class="keywordtype">void</span> checkAndCreateProgram();</div>
<div class="line"><a name="l00167"></a><span class="lineno">  167</span>&#160;    </div>
<div class="line"><a name="l00168"></a><span class="lineno">  168</span>&#160;</div>
<div class="line"><a name="l00169"></a><span class="lineno">  169</span>&#160;};</div>
<div class="line"><a name="l00170"></a><span class="lineno">  170</span>&#160;</div>
</div><!-- fragment --></div><!-- contents -->

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
