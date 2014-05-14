# openFrameworks 한국어 사이트
openframeworks한국어판 사이트 [openframeworks.kr](http://openframeworks.kr)을 생성하는 콘텐츠를 관리하는 저장소(repository)입니다.번역작업을 도와주실 수 있는 분은 아래의 메일 주소로 연락 주시기 바랍니다.

김정운 (azuremous@gmail.com)

## 사이트를 로컬에서 구축하기 위한 설정

번역을 도와 주실 분은 먼저 저장소를 Fork하여 로컬 컴퓨터에 다운로드합니다. 또한, 당신의 컴퓨터에는 Python, lxml 그리고 [blogofile](http://blogofile.com/)가 설치되어 있어야 합니다. Python이 설치된 컴퓨터는 다음 단계로 lxml과 blogofile을 설치할 수 있습니다 :

	easy_install lxml
	easy_install blogofile

로컬 컴퓨터에서 사이트를 생성하고 보기 위해서는 다음 명령을 실행합니다 :

	blogofile build
	blogofile serve

그리고 로컬 사이트인 http://localhost:8080/에 접속합니다.

** blogofile build시 'python ValueError: unknown locale: UTF-8'오류 해결 방법

<pre><code>export LC_ALL=en_US.UTF-8    
export LANG=en_US.UTF-8</code></pre>

로컬 버전에서 변경 사항을 확인하려면 항상 먼저 build와 serve를 실행해야 합니다.

** Please note, this version of ofSite is built in blogofile v.0.7.1, see the reference for installing on Vanilla Ubuntu [below](#below)

To build the site, you will need to:
	
	git clone https://github.com/EnigmaCurry/blogofile
	git checkout 0.7.1
	python setup.py install

And run:

	blogofile build
	blogofile serve
    

## Documentation-style markdown

The documentation portion of the site is written in Markdown, a wiki-style syntax. See details on [Daringfireball](http://daringfireball.net/projects/markdown/). 

The easiest way to check the syntax is having a look at the many pages already on the site, but here are some useful tips:

To insert code snippets use four tildes followed by curly braces with ".cpp" inside, and ending with four tildes:

	~~~~{.cpp}
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	~~~~


Images are added using normal markdown format:

`![Image Title](filename.png "alt text")`

Additional tips can be found in [Contributing Documentation](https://github.com/openframeworks/ofSite/wiki/Contributing-documentation) on the [ofSite wiki](https://github.com/openframeworks/ofSite/wiki)

## 유용한 Markdown 에디터들

An alternative to running blogofile locally is to use a Markdown editor that can show you a rendering as you work.

* Mac OSX: [Mou](http://mouapp.com/) (OSX 10.7) 혹은 [MarkEdit](http://keshiki.net/markdown-editor/) (OSX 10.6+)
* Windows: [MarkdownPad](http://www.markdownpad.com/)
* Linux: [Writr](http://antrix.net/pages/writr-markdown/), [ReText](http://sourceforge.net/p/retext/home/ReText/), & the [gedit-markdown](http://www.jpfleury.net/en/software/gedit-markdown.php) plugin

## Notes
Note: The website utilizes some additions to Markdown itself, so specialized functions such as code syntax highlighting may not be available in the editor, even though it will work fine on the site.

Installation notes (Mac OSX 10.8): If you get errors when building the site, you may need blogofile 0.7.1 (current version is 0.8b). The only way I've found to install the version has been by cloning [https://github.com/EnigmaCurry/blogofile](https://github.com/EnigmaCurry/blogofile) and checking out the 0.7.1 tag. 
Then inside the blogofile folder run

	sudo python setup.py install
	
Your may also need to install [asciidoc](http://www.methods.co.nz/asciidoc/manpage.html)

<a id="below"></a>

## Vanilla Ubuntu 12.04 install:

	aptitude install build-essential gcc python-dev libxslt1-dev git python-setuptools python-pip 
	easy_install lxml

	git clone https://github.com/EnigmaCurry/blogofile
	cd blogofile
	git checkout 0.7.1
	python setup.py install

	cd ..
	git clone https://github.com/openframeworks/ofSite.git
	blogofile build
	blogofile serve