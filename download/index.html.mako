## -*- coding: utf-8 -*-
<%inherit file="/_templates/slideshow_wide.mako" />

<h1>다운로드</h1>
<div id="download-latest-header">
	<h2>${bf.config.currentVersion}</h2>
	<p><strong>는 가장 최근에 릴리즈된 버전입니다. 새로운 버전은 새로운 기능, 새로운 인터페이스를 포함하며, 아마도 새 버그가 포함되어있을 수 있습니다. ${bf.config.currentVersion}는 예전 버젼의 프로젝트와 100% 호환되지 않습니다. <a href="https://raw.github.com/openframeworks/openFrameworks/0.8.1/CHANGELOG.md">변경 사항</a>을 참고하시어 구 버전과의 차이점을 확인해보시기 바랍니다.</strong></p>
	<p>openFrameworks를 사용하기 위해서는, IDE가 필요합니다. 여러분이 사용하는 플랫폼에 맞는 셋업가이드를 참고해주시기 바랍니다. 발견된 버그는 <a href="http://github.com/openframeworks/openFrameworks/issues">이슈</a> 페이지에 알려주시고, 만약 질문이 있으시다면 <a href="http://forum.openframeworks.cc">포럼(영문)</a>에 올려주시기 바랍니다. openFrameworks는 <a href="../about/license.html">MIT License</a>하에 배포되고 있습니다.</p>
</div>

<div id="download-bg-desktop">
    <div id="download-latest-platform">
	    <h2>osx</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_osx_release.zip">xcode</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/xcode">xcode</a></p>
    </div>

    <div id="download-latest-platform">
	    <h2>linux</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux_release.tar.gz">code::blocks</a></p>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux64_release.tar.gz">code::blocks (64 bit)</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/linux-codeblocks">code::blocks</a></p>
	    <p><a href="../setup/linux-eclipse">eclipse</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>windows</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_win_cb_release.zip">code::blocks</a></p>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_vs_release.zip">visual studio</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/codeblocks">code::blocks</a></p>
	    <!--<p><a href="../setup/vs-2008">visual studio 2008</a></p>-->
	    <p><a href="../setup/vs">visual studio</a></p>
    </div>
</div>

<div id="download-bg-mobile">
    <div id="download-latest-platform-title">
	    <h2>모바일</h2>
	    <p><em>모바일 플랫폼을 위한 openFrameworks 는 데스크탑 버젼의 기능 뿐만 아니라 가속도 센서, 나침반기능, GPS등 모바일 플랫폼에서 동작하는 기능들을 추가로 지원합니다. </em></p>
    </div>

    <div id="download-latest-platform">
	    <h2>ios</h2>
	    <p><em>osx만 가능</em></p><br/>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_ios_release.zip">xcode</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/iphone">xcode</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>android</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_android_release.tar.gz">eclipse</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/android-eclipse">ADT</a></p>
    </div>
</div>


<div id="download-bg-armlinux">
    <div id="download-latest-platform-title">
	    <h2>linux arm</h2>
	    <p><em>라즈베리파이, 비글본 블랙, Pandaboard, 비글보드 등 리눅스가 동작하는 ARM 아키텍처 보드를 위한  openFrameworks 입니다. </em></p>
	    <p><em>셋업 가이드는 대부분 일부 일반적인 보드들을 위한 것이지만, armv6나 armv7 기반이라면 잘 동작할것입니다.</em></p>
    </div>

    <div id="download-latest-platform">
	    <h2>linux&nbsp;armv6</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linuxarmv6l_release.tar.gz">linux armv6</a></p><br/>
	    <h3>셋업 가이드</h3>
	    <p><a href="../setup/raspberrypi">라즈베리파이</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>linux&nbsp;armv7</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linuxarmv7l_release.tar.gz">linux armv7</a></p><br/>
	    <h3>셋업 가이드</h3>
	    <p><a href="../setup/pandaboard">pandaboard</a></p>
	    <p><a href="../setup/armv7">generic armv7</a></p>
    </div>
</div>

<br class="clearboth"/>

우리는 컴파일되지 않은 라이브러리 형태로 openFramework를 배포하고 있습니다. openFrameworks를 다운로드를 받고 압축을 풀면, `addons/`, `apps/`, `libs/`등등의 폴더들을 보실 수 있을것입니다. openFrameworks가 이러한 폴더들을 모두 포함하고 있기 때문에, 만약 여러 버전의 openFrameworks를 동시에 유지하고 싶으시다면, 폴더를 따로 두면 됩니다. 예를 들어, `of_v0.8.0_osx_release/`폴더와 `of_v0.7.3_osx_release/`폴더가 있다면, 각각의 폴더는 내부에 `apps/`라는 폴더를 갖고 있습니다. 만약 openFrameworks의 새 버전이 릴리즈 되었다 하더라도, 이전 버전의 프로젝트들은 여전히 구 버전의 openFrameworks로 컴파일 할 수 있습니다.

예제 폴더(`examples/`)는 좋은 출발점입니다. `examples/` 내부에는 openFrameworks의 가능성을 볼 수 있는 다양한 예제파일들이 들어있습니다. 서체로딩, 그래픽, 오디오 입출력, 사운드 재생과 FFT분석, 비디오 가져오기, 비디오 재생, 이미지 로드 및 저장, 이벤츠 핸들링, 시리얼 통신, 그밖에 많은 것들이 포함되어있습니다. 
<br />

<div id="myslides">
<img src="0071_0.png" />
<img src="0071_1.png" />
<img src="0071_2.png" />
<img src="0071_3.png" />
</div>

-------------------------------

nightly builds  
--------------

모든 night OF는 자동으로 빌드 됩니다. <a href="${bf.config.site.url}/nightlybuilds.html">이곳</a> 에서 최종 빌드를 구할 수 있습니다.

-------------------------------

other releases  
--------------

구 버전의 openFrameworks는 [이곳](older.html)에 저장되어 있습니다. openFrameworks의 최종 버전은 [openFrameworks GitHub](https://github.com/openframeworks/openFrameworks/)을 참고해 주시기 바랍니다. 만약 openFrameworks 제작에 관심이 있으시다면 GitHub 저장소를 fork하신 뒤 [openFrameworks GitHub workflow](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow)가이드라인을 따라 주시기 바랍니다.

[0]: http://forum.openframeworks.cc
[1]: http://github.com/openframeworks/openFrameworks/issues
[2]: http://www.openframeworks.cc/versions/v0.071/of_v0071_win_cb_release.zip
[3]: http://www.openframeworks.cc/versions/v0.071/of_v0071_vs2010_release.zip
[4]: http://www.openframeworks.cc/versions/v0.071/of_0071_osx_release.zip
[5]: http://www.openframeworks.cc/versions/v0.071/of_v0071_linux_release.tar.gz
[6]: http://www.openframeworks.cc/versions/v0.071/of_v0071_linux64_release.tar.gz
[7]: http://www.openframeworks.cc/versions/v0.071/of_0071_iOS_release.zip
[8]: http://www.openframeworks.cc/versions/v0.071/of_v0071_android_release.tar.gz
[9]: ../license
[10]: http://openframeworks.cc/setup
