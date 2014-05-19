## -*- coding: utf-8 -*-
<%inherit file="/_templates/slideshow.mako" />

<h1>about</h1>
<div id="myslides">
<img src="0.jpg" />
<img src="1.jpg" />
<img src="2.jpg" />
<img src="3.jpg" />
<img src="4.jpg" />
<img src="5.jpg" />
<img src="6.jpg" />
<img src="7.jpg" />
<img src="8.jpg" />
</div>
<br/>

openFrameworks는 [오픈소스](license.html)이며, [C++](https://en.wikipedia.org/wiki/C%2B%2B)언어를 기반으로 하는 개발 도구로써, 간단하고 직관적인 프레임워크입니다. 개발환경은 아래에 나열된 몇가지의 공용 라이브러리를 포함하고 있습니다:

* 그래픽 : [OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [libtess2](https://code.google.com/p/libtess2/) and [cairo](http://cairographics.org/)
* 사운드 입/출력 및 분석 : [rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/), [OpenAL](http://http://connect.creativelabs.com/openal) and [Kiss FFT](http://kissfft.sourceforge.net/) or [FMOD](http://www.fmod.org/)
* 서체 : [FreeType](http://freetype.sourceforge.net/index2.html)
* 이미지 저장 및 로드 : [FreeImage](http://freeimage.sourceforge.net/)
* 비디오 재생 및 로드 : [Quicktime](http://developer.apple.com/quicktime/), [GStreamer](http://gstreamer.freedesktop.org/) and [videoInput](https://github.com/ofTheo/videoInput)
* 기능의 다양성 (for a variety of utilities) : [Poco](http://pocoproject.org/)
* 컴퓨터 비전 : [OpenCV](http://opencv.org/)
* 3D 모델 로드 : [Assimp](http://assimp.sourceforge.net/)

openFrameworks는 강력한 크로스플랫폼을 지원합니다. 현재만 하더라도 5개의 운영체제와(윈도우, 맥OSX, 리눅스, iOS, 안드로이드) 네 종류의 IDE(XCode, Code::Blocks, Visual Studio, Eclipse)를 지원합니다. API는 최소한으로, 그리고 쉽게 이해되도록 디자인 되었습니다.

openFrameworks는 [MIT 라이센스](license.html)에 따라 배포됩니다. 이 라이센스의 규정에 따라 openFrameworks는 누구나 사용이 가능하며 어떠한 목적으로도 사용이 가능합니다.(상업/비 상업적 용도, 공개 또는 개인의 용도, 오픈소스/비공개소스 등) 많은 openFrameworks 사용자들이 커뮤니티에 그들의 작업을 공유하지만, 그것이 꼭 의무는 아닙니다.

간단히 요약하자면, openFrameworks는 코드를 사용하여 쉽게 무언가를 제작할 수 있는 도구라고 할 수 있습니다. 저희에게 상당히 유용한 이 툴이 여러분들께도 도움이 되었으면 좋겠습니다.


----------------
도움을 주신 분들과 후원자들
----------------

openFrameworks는 [Zach Lieberman](http://thesystemis.com/), [Theodore Watson](http://muonics.net/), and [Arturo Castro](http://arturocastro.net/) ("the core")에 의해 활발히 개발되었으며, [OF community](../community/)의 의 도움을 받았습니다. openFrameworks는 두 선지자들의 은혜를 입었습니다: [Casey Reas](http://reas.com/)와 [Ben Fry](http://benfry.com/)에 의해 개발된 [Processing development environment](http://processing.org/), 프로세싱 커뮤니티; 그리고 Ben Fry와 [MIT Media Lab's Aesthetics and Computation Group](http://acg.media.mit.edu/)의 구성원들에 의해 개발된 비공개 c++ 배포판 ACU Toolkit입니다. 책임감을 갖고 openFrameworks의 하부섹션을 관리(rotating basis의 규칙에 따름)하는 커뮤니티 리더들은 현재 아래와 같습니다:

* 3D leader: [Elliot Woods](http://www.kimchiandchips.com/) (elliotwoods)</li>
* Addons leader(s): [James George](http://jamesgeorge.org/) (obviousjim), [Greg Borenstein](http://gregborenstein.com/) (atduskgreg), [Matt Miller](http://mmworks.mattmillerart.com/)</li>
* Community manager: [Kyle McDonald](http://kylemcdonald.net/) (kylemcdonald)</li>
* Documentation leader: [Dayan Moisa](http://justdayan.com/) (justdayan)</li>
* Forum leader: [Jason Van Cleave](http://jvcref.com/) (jvcleave)</li>
* GitHub leader: [Christoph Buchner](https://github.com/bilderbuchi) (bilderbuchi)</li>
* Hardware leader: [Josh Noble](http://thefactoryfactory.com/) (joshua noble)</li>
* Internals/app leader: [Philip Whitfield](http://undef.ch/) (underdoeg)</li>
* iOS leader: [Lukasz Karluk](http://www.julapy.com/blog/) (julapy)</li>
* Outreach leader: [Caitlin Morris](http://caitlinmorris.net/) (c_tl_n)</li>
* Sound leader: [Adam Carlucci](https://github.com/admsyn) (admsyn)</li>
* Tutorial leader(s): [Diederick Huijbers](http://www.roxlu.com/) (roxlu) and [Jeff Crouse](http://www.jeffcrouse.info/) (jefftimesten)</li>
* Typography leader: [Christopher Baker](http://christopherbaker.net/) (bakercp)</li>
* Video leader: [James George](http://www.jamesgeorge.org/) (obviousjim)</li>
* Windows leader: [Matthew Gingold](http://gingold.com.au/) (gameoverhack)</li>


이전의 분들:

* [Damian Stewart](http://damianstewart.com/) (damian) as sound leader</li>
* [Steve Varga](http://www.vargatron.com/) (vargatron) as typography leader</li>

아래는 openFrameworks를 위해 지원금, 후원금, 국제 개발자 컨퍼런스 주최 등 주요 지원을 제공해주신 기관들입니다. 이러한 이벤트들은 수 일간 전세계에서 참여자들을 한 국가에 모이게하기 위해 종종 상당한 자원을 필요로 합니다.

<span class="sponsors">
  <a href="http://amt.parsons.edu"><img alt="sponsor_logo" src="logo-parsons.png" style="display: block; height: 58px;padding-bottom: 3px;"></a>
  <a href="http://www.ycam.jp/en/"><img alt="sponsor_logo" src="logo-ycam.png" style="display: block; height: 69px; /* padding-bottom: 8px; */"></a>
  <a href="http://eyebeam.org/"><img alt="sponsor_logo" src="logo-eyebeam.png" style="display: block; height: 30px; padding-bottom: 18px;"></a>
  <a href="http://studioforcreativeinquiry.org/"><img alt="sponsor_logo" src="logo-sfci.png" style="display: block; height: 69px;"></a>
  <a href="http://www.aec.at/"><img alt="sponsor_logo" src="logo-ars.png" style="display: block; height: 41px; padding-bottom: 14px;"></a>
  <a href="http://www.fordfoundation.org/"><img alt="sponsor_logo" src="logo-fordfoundation.png" style="display: block; height: 42px; padding-bottom: 13px;"></a>
</span>


**[Ars Electronica Festival and Futurelab](http://www.aec.at/)**

2008년 Ars Electronica 에서 OF Lab 이벤트를 지원해주신 것에 대하여 [Ars Electronica Festival and Futurelab](http://www.aec.at/)에 감사드립니다.

**[Eyebeam](http://eyebeam.org/)**

**[Ford Foundation](http://www.fordfoundation.org/)**

두번째 openFrameworks 개발자 컨퍼런스에 스폰서를 제공해 주신것에 대해 [Ford Foundation](http://www.fordfoundation.org/)에 감사드립니다.

**[Parsons the New School for Design](http://amt.parsons.edu)**

**[Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/)**

첫 openFrameworks 개발자 컨퍼런스를 주최해주신 것 뿐만 아니라, 소정의 지원금과 openFrameworks 개발자들에 대한 지원을 해주신 것에 대하여 [Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/)에 감사의 말씀을 드립니다. 

**[Yamaguchi Center for Arts and Media](http://www.ycam.jp/en/)**

OF에 대한 지속적인 지원을 해준 [YCAM](http://www.ycam.jp/en/)에게 감사의 말씀을 드립니다. 2008년 YCAM은 아시아에서는 처음으로 [OF workshop](http://wiki.openframeworks.cc/index.php?title=OfYcam)을 주최하였고, 이후에도 EyeWrtier를 연구해보는 [LabACT series](http://interlab.ycam.jp/en/projects/labact/eye-tracking-study), "오픈소스 예술 공학 도구"를 개발하고 있는 주목받는 개발자들을 초청하는 [Guest Research Projects](http://interlab.ycam.jp/en/projects/guestresearch) ([ofxTimeline](http://interlab.ycam.jp/en/projects/guestresearch/vol2), [mapamok](http://interlab.ycam.jp/en/projects/guestresearch/vol1))등 OF관련 이벤트를 주최해 주었습니다. 또한 최근에는 [세번째 openFrameworks 개발자 컨퍼런스](http://interlab.ycam.jp/en/projects/of-devcon2013)를 주최 해주었습니다.

우리는 아래 기관과 협회등에서 주최된 수 일간의 교육 워크샵, 그리고 "OF Lab"이벤트가 있었다는 사실을 알려드림에 있어 영광스럽게 생각합니다.([the wiki](http://wiki.openframeworks.cc/index.php?title=Education)페이지를 확인해주세요) :

* [Art && Code Festival](http://artandcode.com/)
* [Eyeo festival](http://eyeofestival.com/)
* [Fabrica: The Benetton Group Communications Research Center](http://www.fabrica.it/)
* [Graphic Design Festival Breda](http://www.graphicdesignfestival.nl/en/)
* [iMAL Center for for Digital Cultures and Technology](http://www.imal.org/)
* [MediaLab Prado](http://medialab-prado.es/)
* [New York University Interactive Telecommunication Program](http://itp.nyu.edu/itp/) (ITP)
* [Pratersauna Digital LAB](https://vimeo.com/psdl)
* [Resonate.io Festival](http://resonate.io/)
* [Victoria and Albert Museum](http://www.vam.ac.uk/)

----------------

디자인 철학
--------

openFrameworks is guided by a number of goals: it should be collaborative, usable and simple, consistent and intuitive, cross-platform, powerful, and extensible. openFrameworks is also driven by a "do it with others" (DIWO) philosophy.
openFrameworks는 몇가지의 목적에 따라 가이드됩니다. 그것은 협업적이어야하고, 사용가능하면서 단순하고, 일관성과 직관성을 가져야 하며, 크로스플랫폼을 지원하고, 강력하면서, 확장가능해야합니다.

**협업가능**

openFrameworks development is collaborative. It thrives on the contributions of [many people](https://github.com/openframeworks/openFrameworks/contributors), who engage in [frequent discussion](http://forum.openframeworks.cc/), and collaborate on [addons](http://ofxaddons.com/) and [projects](../gallery). We encourage people to make openFrameworks their own, and contribute to the ecosystem.

openFrameworks의 개발은 [frequent discussion](http://forum.openframeworks.cc/)와 [addons](http://ofxaddons.com/),
[projects](../gallery)에 참여하는 [수많은 분들](https://github.com/openframeworks/openFrameworks/contributors)의 노력하에 진행되고 있습니다.

openFrameworks is developed in a collaborative way. We use git, a distributed versioning system, which means also that people can branch, experiment, and make suggestions. If you look at the network diagram on GitHub, it's looks like some alien diagram, full of weaving branches, code pulling apart and coming together. There's a huge community, all over the world, working on the core code: fixing bugs, submitting pull requests, and shaping the tool the way they want to see it. It's a world wide project, and it's common to wake up in the USA to an inbox full of pull requests and issues emails from coders in Asia and Europe. Over 70 people have contributed to the openFrameworks core directly, and hundreds of people have forked the code or contributed in other ways.

또한 openFrameworks는 협업이 가능한 방법으로 개발되고 있습니다. 우리는 버전 관리 시스템인 git을 사용합니다. 이러한 방식은 누구든지 코드를 branch하거나 실험, 제안하는것을 가능케 합니다. GitHub의 network diagram을 살펴보면, 무슨 외계 다이어그램같은것을 볼수 있을 겁니다. 이것들은 branch들의 수많은 가지치기, 제각각끼리의 pulling과 coming을 의미합니다. 이것은 핵심코드들을 위해 전세계에서 참여하는 거대 커뮤니티입니다. 버그를 수정하고, pull request를 제출하고, 그들이 원하는 방향대로 구체화합니다. 미국에서는 아시아와 유럽의 프로그래머들이 보낸 pull reqeust과 issue들로 가득찬 메일을 아침에 일어나 확인하는것은 흔한 일입니다. 70명이 넘는 분들이 openFrameworks의 코어개발에에 직접적으로 참여 하고있고, 수백명의 사람들이 그 소스코드를 fork하거나 다른 방법으로 참여하고 있습니다. 

**Simplicity**

openFrameworks tries to balance usability and simplicity. The earliest versions of openFrameworks used the core as a tool for teaching C++ and OpenGL, but over time the examples have become the best way to learn while the core takes advantage of more advanced features. In exchange, we created many more examples that come with openFrameworks, with the goal of trying to make simple, hackable starting points for experimentation.

We want openFrameworks to be as simple as possible, especially for folks coming from other languages and environments. C++ is a "large" language, large in the sense that you can write very different types of C++ code. If you go to the bookstore, you'll see hundreds of C++ books. We want to create a library where you don't need to be an expert, where at most you might need a book or two, but that the patterns, approaches and style of the code is simple and intuitive. We were especially interested in achieving a sort of parity with Processing, where many of the functions are similar, allowing easier movement from one framework to another.

**Consistent and Intuitive**

openFrameworks is consistent and intuitive: it should operate on the principle of least surprise, so that what you learn about one part of openFrameworks can be applied to other parts of it. Beginners can use openFrameworks to learn about common programming patterns, and advanced users will be able to apply their experience from other languages and toolkits.

Student first is the motto. A lot of the thinking guiding openFrameworks is: what would I would have liked in a tool 5 or 10 years ago? We want the patterns of coding to be simple and to make it as easy as possible to type. This means having self-explanatory function names like "play" and "stop" for video players, and variable names that are intuitive. We have lots of discussions about intuition, driven by a desire to make the code as straightforward as possible. You should learn by typing, autocomplete should be helpful, etc.

**Cross-platform**

openFrameworks is a cross-platform toolkit. openFrameworks supports as many development environments and operating systems as possible. When you download openFrameworks, you can pick your platform and development environment of choice, and have projects and examples ready to learn from and play with. Difficult to port code is kept out of the core, and kept in addons instead.

openFrameworks is designed to work on a multitude of platforms: OS X, Windows, Linux, iOS, Android, embedded ARM Linux systems, as well as experimental platforms such as BlackBerry PlayBook. openFrameworks developers have devised some clever ways of interfacing with other languages, such such as Java in the case of Android, or Objective-C in the case of iOS.

The joy of a cross-platform library is that it's easy to port your ideas from platform to platform. You can sketch on your laptop then immediately run it on your phone. It allows your ideas to come first, without worrying about the grunt work in making something work across platforms.

**Powerful**

openFrameworks is powerful: it allows you to leverage advanced libraries like OpenCV, use hardware like your graphics card efficiently, and connect peripherals like cameras and other devices.

We chose C++ because it's a fairly low level language, but can still be programmed in a high level way. Because C++ is an extension of the older C programming language, it's possible to write very low level, oldschool C code or higher level C++ code. In openFrameworks, we try to harness both approaches and present simple, clear, yet powerful ways of working with code. Using C++ also makes it easier to interface to the many libraries that have been written in C and C++ without needing to rely on a wrapper for another language.

openFrameworks essentially wraps other libraries such as OpenGL, Cairo, FreeType, FreeImage, and OpenCV. You can think of openFrameworks as a layer of code between user code (the code you will write) and these libraries. Those libraries have different styles, idioms, approaches, etc. and our job it to wrap them in a way which makes them more consistent and intuitive.

**Extensible**

openFrameworks is extensible. When you find something missing from openFrameworks, it's easy to create addons that extend it. The core addons for openFrameworks generally wrap libraries rather than solving problems in novel ways. When openFrameworks wraps libraries, the libraries are left exposed for further hacking.

One mental image of openFrameworks is a scaffolding, or shoulders to stand on while building what you want. One thing that helps keep the core light is that rather than try to include everything we can, openFrameworks has an "addon" system that allows for additional code, libraries, approaches, to be shared between users and woven into projects as necessary.

An openFrameworks addon can be a snippet of code, or it might wrap much more complex libraries such as OpenNI, Tesseract, or Box2d. Addon names usually begin with the prefix "ofx", allowing you to easily see the difference between "core" code and non core code. In addition we include "core addons", addons that we think people will probably want to use, such as ofxOpenCv, but aren't essential for every project.

We try to organize and support the community developing addons through the http://ofxaddons.com site, which automatically collects addons from GitHub by looking for repos that contain the term "ofx" in the title. Right now there are more than 1,500 addons.

**Do it with others (DIWO)**

The driving philosophy behind openFrameworks is "do it with others" (DIWO). We love do it yourself (DIY) culture, which has been heavily promoted and facilitated by the rise of tutorial website like Instructables or Make. But we're also excited about the idea of "making socially" ("with others"). We practice DIWO through workshops, developer conferences, hackathons/labs, knitting circles and meetups in person, and online in the form of mailing lists, forum posts, and so on. We even have a gang sign. Because if you have a gang, you have to have a gang sign. The most important thing we want to stress is that you are not alone, that there's a great group of people out there learning, teaching, hacking, making and exploring the creative side of code.

If you are not a part of the group, welcome!

----------------

faq
--------

**기존의 많은 라이브러리들이 존재하는데, 왜 또다른 c++ 라이브러리를 제작하였나요?**

There are plenty of libraries that exist make it easier to make software, especially with OpenGL. For example, ogre, irrlicht, JUCE, SDL, wxWindows, etc.

Originally, openFrameworks was meant to provide a "bare-bones" alternative. We wanted to write a library that would be the bare minimum necessary to get started doing audio-visual work with C++.

Over time, openFrameworks has evolved into a much more robust toolkit. Now, one of the biggest differences is audience. Our intended audience are folks using computers for creative, artistic expression, and who would like low level access to the data inside of media in order manipulate, analyze or explore.

이미 손쉬운 소프트웨어 제작을 위한 많은 라이브러리들이 존재합니다. OpenGL을 예를들자면, ogre, irrlicht, JUCE, DSL, wxWindows들이 있습니다.

본래, openFrameworks는 "베어본"의 대체를 제공하기 위함이었습니다. 우리는 C++을 통해 오디오-비주얼 작업을 함에 있어서 최소한의 필요 라이브러리를 작성하길 원했습니다.

시간이 지남에 따라, openFrameworks는 보다 강력한 호환가능 제작 도구로 진화하였습니다. 현재에 이르러, 가장 큰 차이는 바로 사용자입니다. 우리의 잠재적 사용자들은 컴퓨터를 통한 창조적인 행위와 예술적 표현을 원하며, 미디어에 포홤되어있는 데이터를 로우 레벨 접근을 통해 그것을 조작하고, 분석하고, 연구하고자 합니다.

**어쨰서 이러한 라이브러리들을 포함하기로 결정하였나요?**

우리의 경험상 가장 깔끔하고 단순한 API들을 제공하하는 라이브러리들을 선택하기로 하였습니다. 또한 가장 관대한 라이센스와, 통합이 쉬운 API들이기도 합니다.

예를들어 우리는 윈도우기반에서 동작하도록 하는 라이브러리로써 GLUT을 선택하였습니다. 일단, 완벽하게 유니버셜하고 당연하게도 관대한 라이센스를 갖고 있으며, 호환불가능 컴파일러나 플랫폼을 찾기가 힘들었기 때문입니다. 물론 우리는 다른 윈도우 라이브러리들(glfw라든가 wxWindows등) 또한 오픈프레임워크에 적용시켜보았습니다만, 최종적으로 후보중에 가장 쉬운 방법을 택하기로 하였습니다.
**최신버전의 openFrameworks는 어디에서 구할 수 있나요?**

최종 릴리즈는 [downloads](../downloads) 페이지에서 구할 수 있고, [github](https://github.com/openframeworks/openFrameworks/)페이지에서도 다운받을 수 있습니다. 가장 최신의 버전은 [develop branch](https://github.com/openframeworks/openFrameworks/tree/develop)에 위치해 있습니다. Github에서 OF 빌드에 관한 정보는 [readme](https://github.com/openframeworks/openFrameworks/blob/master/readme.txt)를 참고해 주십시오. Github을 통한 공헌에 관한 정보를 원하시면, [this document](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow)를 참고해주십시오.

**제가 도울 수 있는 방법은 없나요?**

addon을 제작하거나, 문서를 작성하는것을 돕는 방법도 있습니다. 하지만 가장 중요한것은 튜토리얼을 만드는것입니다. 만약 당신이 흥미로운 뭔가를 만들때 OF를 사용한다면, 많은 소스와 정보, 그리고 아이이어를 가능한 한 많이 작성해 주십시오. 만약 당신이 초보자라면, 무엇이 어려웠었는지를 메모해놓았다가 저희 포럼에 질문을 올리고, 다른사람들이 어떻게 생각하고 해결하는지 확인하십시오.

**openFrameworks는 왜 바이너리가 아니라 소스의 형태로 배포되나요?**

몇가지 이유가 있습니다. &mdash; 첫째로, 실용적입니다. openFrameworks는 여전히 개발중이기 떄문에, 우리가 추구하는 방향대로 변경해 나갈 것입니다. 코드를 보여주는것을 유지함으로써, 이러한 우리의 의도는 훨씬 손쉽고, 문제점이나 혼란스러움에 관하여 보다 나은 피드백을 받을 수 있습니다. 두번때로, 교육적입니다. 이러한 방법은 C++ 라이브러리 논쟁에 관해 배움의 좋은 시작점이 될것입니다. 세번째로, 이것은 openFrameworks를 변화하고 싶거나, 각자의 입맛대로 라이브러리를 수정하고 재구성하는 사람들에게 훌륭한 초대장이 되기 때문입니다.

**How can I learn C++?**

사실 우리는 openFrameworks가 C++을 가르치는 도구가 될 필요는 없지만, C++을 가지고 취미삼아 뭔가를 해보는데 관심이 있는 사람들에게 '첫 발걸음'이 될지도 모르겠다고 생각했습니다. 우리는 [forum](http://forum.openframeworks.cc/)에 커뮤니티가 활성되길 원합니다. 따라서 이곳에 몇가지 질문을 올리시길 권장합니다. 또한 아래 페이지들도 추천합니다:

* [C and C++ in 5 days][6] Philip Machanick 제공, 아마도 우리가 봐왔던 C++ 공부하기에 관하여 최고중 하나입니다. (더도 말고 5일이면 된대요!).
* [프로세싱 유저를 위한 openFrameworks][7] Zach Gage 제공, 프로세싱에서 넘어오기
* [C언어 사용자를 위한 C++ 튜토리얼][12] C에서 넘어오기
* [Programming Interactivity][8] Joshua Noble 제공, 프로세싱과  아두이노 뿐만 아니라 openFrameworks 0.62버전을 포함합니다.
* [StackOverflow][11]는 일반적인 혹은 난해한 질문을 할 수 있는 훌륭한 커뮤니티입니다.
* [C++ FAQ](http://www.parashift.com/c++-faq-lite/index.html) Marshall Cline 제공, 그리고 [C++ FQA Lite](http://yosefk.com/c++fqa/index.html) Yossi Kreinin 제공.
* [cppreference.com/wiki/][15] 표준 템플릿 라이브러리 레퍼런스
* [cplusplus.com](http://cplusplus.com) 는 훌륭한 [언어튜토리얼][9] 과 [레퍼런스][10]를 제공합니다.
* [cprogramming.com][13]는 많은 튜토리얼을 갖고 있습니다.

[0]: http://wiki.openframeworks.cc/index.php?title=Svn
[1]: http://vimeo.com/tag:openFrameworks
[2]: http://www.flickr.com/search/?q=openFrameworks&s=rec&z=t
[3]: http://www.youtube.com/results?search_query=openFrameworks&search=tag&search_sort=video_date_uploaded
[4]: http://search.twitter.com/search?q=openFrameworks
[5]: http://www.creativeapplications.net/?cat=261
[6]: http://www.itee.uq.edu.au/~comp3300/Resources/C_C++_notes.pdf
[7]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users
[8]: http://oreilly.com/catalog/9780596154141/
[9]: http://www.cplusplus.com/doc/tutorial/
[10]: http://www.cplusplus.com/reference/
[11]: http://stackoverflow.com/
[12]: http://www.4p8.com/eric.brasseur/cppcen.html
[13]: http://cprogramming.com/
[14]: http://yosefk.com/C++fqa/
[15]: http://www.cppreference.com/wiki/
