---
date: 2008/06/30 14:16:00
title: Processing 사용자들을 위한 openFrameworks
summary: An overview of OpenFrameworks for processing junkies
author: Zach Gage
author_site: http://www.stfj.net 
---

## Contents

    
*   [1 프로세싱은 실제로 어떻게 동작하는가][3]
    
    *   [1.1 클래스 상속이란 무엇인가요? (부모 클래스 와 자식 클래스)][4]
    *   [1.2 Ok, so what does this have to do with Processing?][5]
        
    
*   [2 OpenFrameworks는 어떻게 동작하는가][6]
    
    *   [2.1 Main.cpp In-depth][7]
        
    
*   [3 Java vs. C++ 컴파일 프로세스][8]
*   [4 C++에서 클래스는 어떻게 동작하는가(두개의 파일!?)][9]
    
    *   [4.1 ofApp.h][10]
    *   [4.2 ofApp.cpp][11]
        
    
*   [5 What the Fu\*&? (포인터의 기초적인 소개).][12]
    
    *   [5.1 Value vs. Reference][13]
    *   [5.2 & and \*][14]
    *   [5.3 그래서 이걸 어디에 쓸수 있나요?][15]
    *   [5.4 기본 데이터형][16]
        
        *   [5.4.1 The Processing String Exception][17]
            
        
        
    
*   [6 PImage, updatePixels() vs. ofTexture, pixels\[\]][18]
    
    *   [6.1 Color 오브젝트 없이 픽셀 값들은 어떻게 저장되나요?][19]
        
    
*   [7 C++에서의 일반적인 문제들 / 기타 주제들][20]
    
    *   [7.1 은연중에 데이터 형변환을 기대하시나요?][21]
    *   [7.2 윈도우 사이즈 변경하기][22]
    *   [7.3 Update() 와 Draw()?][23]
    *   [7.4 How in the world do I print to the console?][24]
        
        *   [7.4.1 printf][25]
        *   [7.4.2 iostream][26]
        
    *   [7.5 Smoothing은 채워진 도형들에 적용되지 않나요?][27]
    *   [7.6 ofSetColor와 관련한 비디오 재생에 관한 문제점/요점들 ][28]
    *   [7.7 Processing의 background() vs. OF의 ofBackground()][29]
    *   [7.8 ofFill() / ofNoFill() vs. processing의 fill() noFill()][30]
    *   [7.9 수학 함수들은 어디에서 왔나요? Math functions, and where they come from (no more Math.\*)][31]
        
        *   [7.9.1 cmath][32]
        *   [7.9.2 ofConstants][33]
        *   [7.9.3 ofMath][34]
        
    *   [7.10 구조체(Structs), 이것들은 무엇을 위한것이며, 어떻게 사용하나요?][35]
    *   [7.11 메모리 관리와 여러분 ][36]
    *   [7.12 기초적인 논리 문제들][37]
    *   [7.13 accidental breakpoints in Xcode and Why Having a Debugger Rocks][38]
            

## 프로세싱은 실제로 어떻게 동작하는가

<!--If you've been programming in processing for a while (and if you made it by the disclaimer), it's safe to assume that you've used classes before. One aspect of Java classes that you might not have used however, is polyMorphism (class extending). -->
만약 여러분이 한동안 프로세싱에서 프로그래밍을 해왔다면(그리고 이런것들을 무시하고 해왔다면), 여러분은 이미 클래스를 사용해왔습니다. 여러분이 아마 전혀 사용하지 않았을 Java 클래스의 한 특징중 하나는 바로 polyMorphism(다형성)입니다. (클래스 상속)

### 클래스 상속이란 무엇인가요? (부모클래스와 자식클래스)

클래스 상속이란 이미 갖고 있는 하나의 클래스에 기능들을 더해 새로운 클래스를 만드는 것입니다.

예를들어 여러분이 비디오케임을 만든다 칩시다. 아마도 적캐릭터를 위한 클래스를 만들기 위해서 그들이 어떻게 생겼는지 이미지를 불러오고, 그리고 화면상에 자신의 위치를 중심으로 어떻게 움직이는지를 규정해주어야 할것입니다. 아마도 아래와 같이 말이죠:

~~~~{.cpp}
    class Enemy
    {
    	int x; //x 위치
    	int y; //y 위치
    	public void init(String pathToEnemyPicture, int startX, int startY)
    	{
    		// 하드드라이브상에서 적 캐릭터의 이미지를 불러옵니다.
    		// 시작위치를 지정해준다
    	}
    	
    	public void move()
    	{
    		// 움직인다. maybe shoot at player
    	}
    	public void draw()
    	{
    		// 캐릭터를 화면의 적절한 위치에 그린다. 
    	}
    }
~~~~

하지만 만약 여러분이 적 캐릭터의 여러 타입을 만들고 싶어서, 매번 그들을 다르게 그리고 싶다면 어떻게 해야할까요? 여기서 클래스 상속을 사용합니다. 모든 캐릭터들은 여전히 자신만의 초기화 함수 Init()과 움직임을 구현하는 move()함수를 가질것입니다. 따라서 우리가 변화를 주어야 할것은 draw()함수일 것입니다.

We are now using the Enemy class as what is called a Base Class. A Base Class is a class that probably won't ever be instantiated, only inherited by other classes. Because the draw function is the only one we want to change, we don't need to write either the init() or move() functions. By declaring the draw() function again however, we are doing something called function re-definition. This is where you re-declare a function that has already been declared, in effect overwriting it for this subclass of Enemy.

여기서 우리는 부모 클래스로 적 클래스를 사용할 것입니다. 부모 클래스는 아마도 절대 인스턴스화되지 않을것입니다. 대신에 상속받은 다른 클래스만 인스턴스화 됩니다. draw()만이 우리가 변경할 유일한 함수이기 때문에, init()이나 move()함수들은 새로 작성할 필요가 없습니다. draw()함수를 다시 작성할때 하는 작업을, **함수 재정의**라 합니다. Enemy클래스의 자식클래스에 이미 정의된 함수를 재정의 함으로써, 함수를 덮어씌우는 효과를 가져오는 것입니다.

Java의 예는 아래와 같습니다.

~~~~{.cpp}
    class DoubleEnemy extends Enemy
    {
    	public void draw()
    	{
    		//draw myself twice
    	}
    }
~~~~

같은 기능으로써 C++의 예는 아래와 같습니다.

~~~~{.cpp}
    // "DoubleEnemy.h" 파일에서
    class DoubleEnemy: public Enemy // class[클래스 이름]:[privacy][부모 클래스 이름]{}
    {
    	// 여기서는 원형만 선언하고, 실제 코드의 내용은 "DoubleEnemy.cpp"에 작성합니다.
    	public void draw();
    	
    }; // 클래스 선언의 끝에는 항상 ";"을 추가해줘야 함을 잊지 마세요!
~~~~
    

DoubleEnemy는 추상적인 Enemy클래스를 상속받고 있기 때문에, Emeny클래스에 선언된 모든 함수와 변수들을 그대로 상속받슾니다. 따라서, init()나 move()함수를 다시 새로 작성할 필요가 없는것입니다. 심지어 새로운 특별한 Enemy클래스를 새로 만들때도 마찬가지 입니다:

~~~~{.cpp}
    // "TripleEnemy.h" 파일에서
    class TripleEnemy : public Enemy
    {
    	public void draw(); // draw myself three times
    };
~~~~

자 이제 우리는 움직이면서 스스로를 초기화하지만, 가갂 다르게 보여지는 두가지 타입의 적캐릭터를 가지게 되었습니다. 클래스 상속의 또다른 장점은 움직임이나 초기화과정을 변경하고 싶을때, 부모클래스에서 한번만 변경해주면 상속받은 모든 적캐릭터 타입이 적용된다는 점입니다. 

<!--Ok, so what does this have to do with Processing?-->
### 그렇다면 Processing에서는 이러한 과정이 어떻게 동작하나요?

<!--Although Processing hides it from you through their compiler, Processing is actually an engine running a Base Class (pApplet). Anything that you write, including classes, inside the Processing application automatically extends this base class that the Processing engine then runs. When you write draw() and setup() functions, you are actually re-defining the draw() and setup() functions that are in the processing base class.-->
비록 Processing이 컴파일러를 통해 여러분에게 이러한 것들을 숨기고 있지만, Processing은 사실 부모클래스(pApplet)상에서 동작하는 엔진입니다. Processing 프로그램 내에서 작성하는 클래스들을 포함한 어떠한 것이든 자동적으로 프로세싱 엔진인 부모클래스를 기반으로 동작하는 것입니다. draw()나 setup()함수를 작성할때, 실제로는 Processing의 부모클래스에 있는 draw()와 setup()을 재정의해서 사용하고 있었던 것입니다.

## <!--How OpenFrameworks Works.--> OpenFrameworks에서는 어떻게 동작하는가

<!--OpenFrameworks is built in much the same way as Processing. It just doesn't hide any of the complicated parts from you. However, if you open up ofApp.h, right under the \#include "ofMain.h" line, you will see a line that says: "class TestApp : public ofSimpleApp{". -->
OpenFrameworks도 Processing과 거의 비슷한 방법으로 만들어졌습니다. 단지 이러한 복잡한것들이 숨겨지지 않았을 뿐입니다. ofApp.h파일을 열어서 \#include "ofMain.h" 의 바로 밑 라인을 확인해보시면 아마도 이런 코드를 보실 수 있을것입니다: "class ofApp: public ofSimpleApp{".

<!--
This means, the ofApp class extends the ofSimpleApp class, just like in processing. Right under that, under "Public:" are all of the functions that ofApp is inheriting from ofSimpleApp that it needs to re-write, like in processing.-->
이 말은, ofApp클래스는 ofSimpleApp 클래스를 상속받겠다 라는 뜻입니다. Processing과 마찬가지로요. "public:"의 아래를 보시면 ofApp의 모든 함수들이 나열되어있는데 이것 또한 ofSimpleApp에서 상속받은 것입니다. 우리가 재정의 해서 사용하면 되는것입니다, 프로세싱과 마찬가지로요.

<!--
Every C++ application needs a function called int main() to define where the program starts. Java requires this as well, but Processing hides this fact from you since anything you write is only extending a larger class with that main being called elsewhere. -->
모든 C++프로그램은 프로그램이 실행될 때 int main()이라는 함수가 호출되도록 디자인 되어있습니다. Java도 마찬가지입니다만, Processing은 이러한 것들을 숨겨두었습니다.

<!-- C++ however must start with int main(). This is called the "entry point" and is the jumping off point for your program. -->
하지만 C++은 반드시 int main()으로 시작해야 합니다. 이를 "entry point"라고 하는데, 프로그램의 시작점을 의미합니다.

<!--main.cpp contains this main() function, and essentially contains the code to set your screen size, and kick off an infinite loop which runs your program. If you want to learn more about this, you can read section 2.1, but it's not necessary, and can be confusing at this point.-->
main.cpp는 이 main()함수를 포함합니다. 또한 이 함수 안에는 창의 크기라든가, 실제 프로그램이 동작할 무한루프 속으로 넘겨주는 내용이 담겨있습니다. 만약 여러분이 좀 더 이해하고 싶다면 섹션 2.1을 읽어보시기 바랍니다. 하지만 꼭 필요한것은 아니에요. 어쩌면 더 혼란스러울수도 있습니다.

### <!--Main.cpp In-depth-->Main.cpp 의 계층구조

<!-- If you look at any of the OF example files you will see that in the main.cpp file contains two \#include statements up at the top. These operate the same way as they do in Processing. -->
OF의 예제들을 살펴보시면 main.cpp안에 두 \#include 구문이 상단에 있음을 보실 수 있습니다. 이는 processing에서 동작하는것과 같은 역할을 합니다.
<!--The first one,-->
첫번째는 아래와 같습니다,

~~~~{.cpp}
    #include "ofMain.h"
~~~~

<!-- adds the entire OpenFrameworks library to the main.cpp class. This allows the class to run two important OF functions, ofSetupOpenGL(), which creates the window to display your application, and ofRunApp(), which runs your application.-->
OpenFrameworks의 모든 라이브러리를 main.cpp 클래스에 추가합니다. 이렇게 함으로써 클래스에서 두가지의 중요한 OF함수를 사용할 수 있습니다. 여러분의 프로그램을 표시할 윈도우를 생성해주는 ofSetupOpenGL()과, 실제 여러분의 프로그램이 동작할 ofRunApp()입니다.

<!-- If you notice, ofRunApp() is passing a parameter, -->
잘 보시면, ofRunApp()은 parameter를 전달하고 있습니다, 

~~~~{.cpp}
    new ofApp()
~~~~

ofRunApp() is passing an instance of the ofApp class, which happens to be the second thing included up at the top of main.cpp. ( \#include "ofApp.h" )
ofRunApp()은 ofApp 클래스의 인스턴스를 전달하고 있습니다. 이것이 바로 \#include "ofApp.h" 구문에 의해 실댕되는 두번째 입니다.

ofRunApp requires the passed parameter to be a type of ofSimpleApp, which is why when we looked at ofApp.h earlier, we noticed it extended ofSimpleApp.

ofRunApp은 ofSimple타입의 parameter를 전달받아야 할 필요가 있습니다. 이것이 바로 ofSimpleApp을 상속받는다는, 우리가 ofApp.h을 이전에 살펴보아야 할 이유였습니다.

To recap, 
we have main.cpp which includes ofMain and ofApp.
다시 정리하자면, main.cpp는 ofMain과 ofApp 두가지를 포함하고 있습니다.
<!-- *   It includes ofMain to set the screenSize and to call ofRunApp-->
*	ofMain은 윈도우 사이즈를 지정하고 ofRunApp을 호출합니다.

<!--It includes ofApp to have a class to pass ofRunApp.-->
ofApp은 ofRunApp을 전달받는 클래스를 가지고 있습니다.

We also have ofApp which includes ofMain

*   It includes ofMain so that any code you write in ofApp can benefit from the OpenFrameworks Library.
    

<!-- Until you start writing your own classes, it might help to think of ofApp.cpp and ofApp.h as the main window in Processing. Meaning, any code you write will go into one of those two files, and until you feel comfortable, you won't have to look at anything else in Xcode. -->
여러분이 자신만의 클래스를 작성하기 전에, ofApp.cpp 와 ofApp.h에 이해하는것은 Processing의 메인 윈도우를 이해하는데 도움이 많이 될 것입니다. 이 두가지 파일에 코드를 작성하는것이 익숙해질때까지는 Xcode의 다른 부분들에 대해서 알 필요가 없습니다.

## Java 와 C++의 컴파일 과정

<!-- Java and C++ have vastly different compiling processes. It is important to understand the C++ compilation process as each stage of it can produce different types of errors. Knowing what stage produces what type of errors can go a long way towards debugging your project.-->
Java와 C\++의 컴파일 처리과정은 상당히 다릅니다. c\++의 컴파일 처리과정을 이해하는 것은 매우 중요합니다. 컴파일 처리의 각 단계는 다른 타입의 에러를 생성하거든요. 어떤 단계가 어떠한 타입의 에러를 내는지를 이해하는것은 여러분의 프로젝트를 디버깅하는데 도움을 줍니다.
<!-- In Java, every time you compile, your entire program is run through and changed into byte code. Then when you run your program, a Java interpreter does runtime compilation to make your program work.  -->
Java는 컴파일을 할때마다, 여러분의 전체 프로그램 전체가 byte코드로 변경된 채로 동작합니다. 그리고 나서 프로그램을 실행할때, 프로그램이 동작할 수 있도록 자바 해석기가 런타임 컴파일을 합니다.

c++은 조금 더 복잡합니다.

*	첫째로, 컴파일러는 프로그램을 전처리합니다. 전처리 과정에서는 모든 코드에서 \#include 문을 읽어 코드 조각들을 복사하고 붙여넣어 거대한 하나의 파일로 만듭니다. (\# 심벌로 시작되는 구문들은 전처리기에서 읽도록 되어있습니다.)

*	두번째로, 컴파일러는 코드전체를 해석(parse)하여 코드들이 문법에 맞는지 확인하고, 어셈블리어(상당히 낮은 수준의 언어)로 해석하기 위해 코드를 쪼개 해석트리(parse-tree)에 집어넣습니다.

*   세번째로, 어셈블리어는 기계가 이해할 수 있는 언어로 해석되어 object파일로 변환됩니다.

*   마지막으로, object파일은 실행파일인 .exe나 .app파일과 연결(link)됩니다.
    
C++의 컴파일 스타일의 한가지 장점은 OpenFrameworks와 같은 거대한 프로그램들을 컴파일할때 두드러집니다. 코드의 변경없이 컴파일을 하면 다시 컴파일을 하지 않습니다. 처음 컴파일을 하면 아마도 30초에서 1분의 시간이 걸릴것입니다. 그리고 나서 ofApp.cpp를 변경하고 컴파일을 다시 해보면, 컴파일은 엄청 빨라집니다. 이는 xCode가 openFrameworks라이브러리 전체를 컴파일할 필요없이, 코드의 변경된 부분만 컴파일하면 되기 때문입니다. 

***역자 주** 좀 더 자세한 사항을 알고 싶으시면 [이 문서](http://ko.wikipedia.org/wiki/자바와_C%2B%2B의_비교#.EB.9F.B0.ED.83.80.EC.9E.84)의 런타임 부분을 읽어보세요.*

## C++에서 클래스는 어떻게 동작하나요? (파일이 두개!?)

C++ 클래스는 두개의 파일로 이루어져 있습니다.
It helps to think of these two classes as a recipe. 

헤더파일 (.h)은 내용물의 리스트와 같으며 아래와 같은것들을 포함하고 있습니다:

*   헤더파일이 여러번 참조되는 상황을 방지하하기 위한 전처리 구문
*   다른 클래스를 읽는 include 구문
*   클래스 상속 구문
*   클래스의 로컬 변수들
*   클래스에 포함될 함수들의 원형
*   함수들과 변수들에 대한 보안 세팅 (public, private, protected )
    
바디 파일(.cpp)은 내용물의 리스트에 관한 상세 설명과 같으며 아래와 같은 내용들을 포함합니다:

*   참조할 헤더파일을 알려주는 include 구문
*   모든 함수 원형에 관한 실제 동작 코드들
    
더 알고 싶으시면, ofApp.cpp와 ofApp.h파일을 열어보시기 바랍니다.

### ofApp.h

All of the code in ofApp.h is wrapped in a large if statement called \#ifndef. This statement is designed explicitly for the preProcessor stage of compilation. Basically, when the compiler runs through your code before it compiles, it copies and pastes code to make all of the include statements work. If you have included the same header file in multiple places, this can cause a problem for compilation. \#ifndef tells the compiler that if whatever variable name you have decided, in this case, \_TEST\_APP, has already been defined somewhere in the code, not to define it again. It's sort of a hack to make organizing code easier, and is good practice to include in any custom classes you make (with a different variable name obviously).

After this comes the \#include statement that brings in all of the OpenFrameworks functionality.

Then comes the class ofApp : public ofSimpleApp{ line which is very similar to java's class declaration structure. To compare the two:
C++  :
class \[className\] : \[privacy\] \[extendedClass\]

JAVA/P5:
\[privacy\] class \[className\] extends \[extendedClass\]

Following the class definition is the meat of the .h file, the class itself. The class is broken into privacy blocks. In this case, there is only a public: block, but you may wish to add a private or protected block yourself. In Java, you can define your public and private functions and variables in any order, but in c++ they must be grouped into blocks.

It is important to note that in c++ you must define your classes in your header before you use them (much like your classes local variables). This is called prototyping. At first it can be annoying, but in the end, having all of your functions and variables in an easy to read header file can serve as a sort of documentation for your class, and is especially useful when trying to learn about someone else's classes or the OpenFrameworks library.

It is important to note that classes end with a curly bracket and semi-colon "};" and not just a normal curly bracket. Also important is the \#endif which ends the \#ifndef statement from the top of the .h file

More information on C++ classes can be found at:
[http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html][48]

### ofApp.cpp

This is where you write the actual code for your class. The syntax for class functions is slightly different than Processing.
C++  :
\[ReturnType\] \[class\] :: \[functionName\] ( \[type\]\[variableName\]..etc )

JAVA/P5:
\[ReturnType\] \[functionName\] ( \[type\]\[variableName\]..etc )

## What the Fu\*&? (a very basic introduction to pointers).

Pointers are arguably the most difficult and frustrating part of C++.
I am going to provide a very basic explanation of Pointers here, enough to get some of an idea of what they are about, and how they relate to Java, but if you want a full-blown explanation of how they work and what they can be used for, I suggest reading this excellent and massive tutorial:

[http://www.cplusplus.com/doc/tutorial/pointers.html][51]

One of the largest differences between C++ and Java is that in Java, except for the basic data-types (byte, short, int, long, float, double, boolean, and char), all values are passed by reference. One important note is that Processing copies Strings by value, whereas C++ copies them by reference like all other classes.

### 값 vs. 참조 (Value vs. Reference)

값과 참조의 차이점을 이해하려면, 우선 컴퓨터가 어떻게 RAM에 변수들을 저장하는지 먼저 이해해야합니다.  
When you write the Processing line:
아래와 같이 코드를 작성하면:

~~~~{.cpp}
    int num = 5;
~~~~

What the computer does is it goes to the place in its memory that is set up to store integers, picks an empty spot with the right number of bytes to store an integer, places the number 5 in that spot, and then sends the address of that spot to your program which stores it in the "num" variable.
컴퓨터는 우선 메모리에 정수형 변수를 저장할 공간을 찾아 세팅하고, 해당위치에 5라는 숫자를 저장한다음, 변수 num이 가질 값 5가 실제로 저장된 위치의 메모리주소를 프로그램에게 알려줍니다.

It might be easier to think of the spot in memory that num references as a box containing the number 5:
5
// value stored

2591
// address in memory

  
and as num as knowing the address this box

num:
2591
// address in memory

Because Processing knows you're using an int and knows to pass it by value, when you ask for what num is with the line print(num), it prints the value of the address that num is referencing.

Try typing this code into processing:

~~~~{.cpp}
    void setup()
    {
    int num = 1;
    addOne(num);
    print(num);
    }
    
    void addOne(int num)
    {
      num++;
    }
~~~~

Unsurprisingly, the program prints "1". We know that this is because when you pass num to a function, the function makes a copy of num and doesn't modify the original. This is called passing by value.

  
Lets look at another example. Here, instead of passing an integer, we will try passing a class containing an integer. Try typing this code into Processing:

~~~~{.cpp}
    class Test
    {
      int num=0;
    }
    
    void setup()
    {
    Test test = new Test();
    test.num=1;
    addOne(test);
    print(test.num);
    }
    
    void addOne(Test test)
    {
      test.num++;
    }
~~~~

  
This time it printed "2". What's going on here? 

What happened is that because we created a class Test, Processing recognized that it was not a basic data-type (even though the class contained an int which IS a basic data-type), and passed it to the function by reference. Reference means that instead of passing a copy of the entire Test object to the addOne function, it sent only the address in memory of where the class was stored. 

Let's look at boxes again.

test:
52498
// address in memory

52498:
1
// test.num

So when test is passed through addOne(), really just 52498, or whatever the actual memory address of test's data is passed. Because of that, when test's num is incremented, it is actually changed. No copy is ever made.

Java does this because if it were to pass entire objects around constantly everything would slow to a crawl. The basic data-types are small enough to get passed by value, but everything else is passed by reference.

### & and \*

C++ differs from Java in that you need to explicitly state whether you are passing something by value or by reference. You can also define when a variable will behave as if it contains actual data and when a variable will only contain a pointer to data. You can even make an int that behaves like the Test class did above. This is all done with the & (referencing) and \* (dereferencing) symbols.

the & symbol is used to acquire the memory address of a variable or function, so for example:

~~~~{.cpp}
    b=1;
    a = &b;
~~~~

means, a is now equal to (or points to) the memory address of b, (and not the value of b). At this point, 

~~~~{.cpp}
    a++;
~~~~

would make a equal to the next memory address after b.

the \* symbol is used to acquire the value stored in an address. So, 

~~~~{.cpp}
    *a++;
~~~~

would increment the value stored in a, and therefore, b would now equal 2\.

But how do I declare a variable to point to an address?
To do this, you use the \* symbol. This variable is called a pointer. Because different types of variables take on specific numbers of bytes, it is important to declare pointers of the same type as what they are pointing to, e.g. integer pointers for integers, float pointers for floats, etc.

example:

~~~~{.cpp}
    int x;
    int *ptr;
    
    x=5;
    ptr = &x;
    *ptr = 10;
    
    //x now equals 10
~~~~

### So Where Do I use This?

Initially, you will use pointers to pass arrays back and forth through functions. This can be seen in the movieGrabberExample, where a pointer is used to access the pixels from the video grabber. 

~~~~{.cpp}
    ( unsigned char * 	videoInverted;)
~~~~

This works because when you refer to an array in C++ without the \[\]'s you are actually referring to an address in memory. The \[\]'s work as a dereferencing operator, or, a "\*". 

At runtime, your processor multiplies the number inside of the \[\]'s (your index) by the number of bytes your data-type takes up in memory to figure out how far it must jump in memory to reach that index of your array.

So to pass an array in C++ you must pass it without the \[\]'s, and the receiving function must be aware it is receiving a pointer:

    [functionName] ( [variable type] * [varName]){
    }
    

To learn more about the infinite complexities of pointers, I recommend visiting the site I referenced at the top of this section.
( [http://www.cplusplus.com/doc/tutorial/pointers.html][51] )

### Basic Data-types

Java and C++ share most basic data-types:

byte, short, int, long, float, double, and char. 
(Boolean is also in C++, and works the same way as it does in processing except it is called 'bool').

However, C++ has an extra set of data-types that are unsigned:

unsigned byte, unsigned short, unsigned int, unsigned long, unsigned float, unsigned double, unsigned char.

Unsigned means that instead of running positive and negative, (e.g. char can be set to any value between -128 and 127), these variables have no sign. (e.g. unsigned char can be set to any value 0-255).

  
#### The Processing String Exception

One major difference in the basic data-types is that Processing's string type is "String" while C++ uses a lowercase "string". But more importantly, C++'s string type, when set equal to another string type refers to it by reference (does not make a copy).

_**NOTE: (theo) not sure if this is true. I think C++ is by copy. So this example might be incorrect.** _

_**NOTE: (nathan) I've tested this. It's definitely incorrect. Output is "yes". Also it should be a.c\_str() not a.c\_str(a)** _

So, in processing:

~~~~{.java}
    String a = "yes";
    String b = a;
    b = "no";
    
    print(a);
~~~~

will print "yes"

but in C++

~~~~{.cpp}
    string a = "yes";
    string b = a;
    b = "no";
    printf("%s \n", a.c_str(a));   // to see how this prints, see section 6.3.3 How in the world do I print to the console?
~~~~
    

will print "no".

## PImage, updatePixels() vs. ofTexture, pixels\[\]

When you draw in openGL (OF draws using the GLUT library, which in turn uses openGL, Processing draws to openGL optionally, if you decide to when declaring your window size), any pixel data that you want to put on the screen must be preloaded into your RAM before you can draw it. Loading pixel (bitmap) data to RAM is called loading your image into a texture.

Processing has a number of ways to solve this texture problem that hide what you are actually doing from you.

The first is the PImage object. A PImage is a texture object that has a built in color array that holds pixel values so that you can access the individual pixels of the image that you have loaded in. Images cannot draw themselves exactly, but they can be drawn by the image() function.

~~~~{.java}
    PImage myPImage; //allocate space for variable
    myPImage = loadImage("sample.jpg"); //allocate space for pixels in ram, decode the jpg, and load pixels of the decoded sample.jpg into the pixels.
    image(myPImage,100,100); //draw the texture to the screen at 100,100
~~~~
    

_I should note that its possible that the image() function actually loads the pixels into the ram instead of the PImage, but I dont know enough about the tech behind Processing to say for sure if this is the case or not._

If you want to access the individual pixels of the screen itself, however, you use a different function altogether. You first call loadPixels(), make your pixel changes, and then call updatePixels() to make your changes appear. 

This is slightly confusing, because what is actually happening here is the same as what happened above with the PImage: Processing is loading your pixels from the screen into a texture, essentially a PImage, and then drawing that texture to the screen after you update it. For some reason, however, they chose not to use the same function for both.

OpenFrameworks handles this a little differently (and a little bit better in my opinion). Instead of having two different methods, the ofImage object loads images from files, _and_ images from the screen. Additionally, ofImage can draw itself and needs no separate function to do this.

The OF code for the example above with myPImage looks like:

~~~~{.cpp}
    ofImage myImage; //allocate space for variable
    myImage.loadImage("sample.jpg"); //allocate space in ram, decode jpg, load pixels.
    myImage.draw(100,100);
~~~~

If you wanted to change the pixels on the screen, you would also use an ofImage.

~~~~{.cpp}
    ofImage theScreen; //declare variable
    theScreen.grabScreen(0,0,1024,768); //grab at 0,0 a rect of 1024x768. Equivalent to loadPixels();
    //edit pixels in theScreen
    theScreen.draw(0,0); //equivalent to updatePixels();
~~~~

But how do I edit the pixels of something that is in the ram you may ask? The short answer is you cannot. Once something is in the RAM (in an ofTexture), you cannot access it anymore. 

You can edit the pixels of an ofImage because ofImages contain two data structures. One of these is an array of Unsigned Characters which represent all of the colors of every pixel, and the other is an ofTexture, which is used to upload those pixels into the ram after changes.

You can actually turn off this texture in an ofImage to save RAM if you know you won't ever have to draw what you are loading to the screen. This could be useful if you only need to load an image to access pixel color values in it, or if you are taking a screenshot that you will save to your hard drive but never draw. 
see: [http://www.openframeworks.cc/documentation\#ofImage-setUseTexture][58]

### How are pixel values stored without a Color object?

Pixel values are stored as a series of Unsigned Characters. An Unsigned Character is a fancy way of saying a byte value between 0 and 255 inclusive. Every object in OF that can return a pixel array ( getPixels() ), will return you an array of unsigned characters. Because it takes three unsigned characters to denote a color (one for each of the red, green, blue, channels), this array's length will be three times the number of pixels inside of it and structured like:

~~~~{.cpp}
    {pixel_1_Red, pixel_1_Green, pixel_1_Blue, pixel_2_Red, pixel_2_Green, pixel_2_Blue....}
~~~~

To access a color of a specific pixel:

~~~~{.cpp}
    unsigned char *	myPixels; //create a pointer to an unsigned charecter
    myPixels = myOFImage.getPixels(); //set that pointer to point to the beginning of the pixel array
    int colorIndex = y*(myOFImage.width*3)+x*3; // yPos * width * 3 + xPos * 3 = the red channel position
    ofSetColor(myPixels[colorIndex],myPixels[colorIndex+1],myPixels[colorIndex+2]); 
    //sets the color of each channel by going to the successive two values in the array after that of the red channel. 
~~~~

## Common Problems With C++ / Misc. Topics

### Expecting implicit data conversion?

One big surprise that comes with C++ is that it doesn't do implicit data conversion.
A good example of this is trying to print an integer.

~~~~{.cpp}
    int num = 5;
    printf(num +"\n");
~~~~

will yield an error.

This is because printf only prints strings and chars, and num is neither one of these.
To convert any non-string or non-char to a string, use the ofToString() function.

### Changing window size

Window size is set intuitively in main.cpp. If you open it up, the comments will show you clearly how to change the size or go to fullscreen mode.

### Update() and Draw()?

Unlike Processing, OF contains two methods that are run every loop through of your program, Update() and Draw(). 
It is good practice to do all of your calculations in the Update() function and reserve Draw() for simply showing results on the screen. This prevents any large slowdowns that might occur during a draw function that could be too complicated. Instead of getting halves of images drawn or screen-tearing, you simply get a low framerate.

Additionally, I should mention that if you do any heavy lifting in your project (e.g. loading in images, or loading anything at all from a file really), you should do it in your setup() function if possible. Update() and Draw() run in a loop, and because of that you should only include code in them that has to run every frame. If something only has to run once, it should probably be in Setup().

### How in the world do I print to the console?

For printing to the console, you have two options. The first is printf, which is robust but a bit complicated, and is included by default in openframeworks.

The second is iostream, which is simpler, but less robust, and not included by default.

#### printf

If you want to use printf to print to the console, this is a good tutorial on how it works:
[http://www.cplusplus.com/reference/clibrary/cstdio/printf.html][66]

  
#### iostream

Another option for printing to the console is iostream. This is a very old c++ library that lets you print to the console very easily and will implicitly convert many variable types for you so you don't have to use ofToString(). 

To use iostream you first need to include it at the top of your .cpp file

~~~~{.cpp}
    #include <iostream>
~~~~

Note that in some compilers, specifically very old ones, you will need to include <iostream.h\> instead of just <iostream\>. This is due to updates in the c++ standard language library (std) in recent years. A more detailed explanation can be found at:

[http://members.gamedev.net/sicrane/articles/iostream.html][68]

Actually using iostream is extraordinarily easy.

in processing your code might look like this:

~~~~{.java}
    int i = 10;
    String s = "Hello!";
    boolean b = false;
    
    println(i+" "+s+" "+b); // print variables and end the line
    print(i+" "+s+" "+b); // print variables without ending the line.
~~~~

this would print 

~~~~{.java}
    10 Hello! false
    10 Hello! false
~~~~

in the console.

The equivalent c++ code using iostream is:

~~~~{.cpp}
    int i = 10;
    string s = "Hello!";
    bool b = false;
    
    cout<<i<<" "<<s<<" "<<b<<endl; // print variables and end the line
    cout<<i<<" "<<s<<" "<<b;       // print variables without ending the line.
~~~~
    

this would print 

~~~~{.cpp}
    10 Hello! 0
    10 Hello! 0
~~~~

in the console. Note that with iostream, unlike in processing, a false boolean is represented by a '0' and not "false", and a true boolean is represented by a '1'.

Also note that in Java, ending or not ending the line after you print is accomplished by which function you pick, print() or println(), whereas in c++ with iostream, it is controlled by whether or not you put the 'endl' keyword at the end of your cout statement.

### Smoothing not working on filled shapes?

If you are drawing a filled shape, e.g. with ofBeginShape(), even if you have called ofEnableSmoothing(), you will notice that the edges of the shape have not been smoothed. This is because GLUT, the library that OF uses for openGL management, doesn't have support for true full-screen graphics, and therefor can't run full-screen anti-aliasing, which is what would smooth your shapes.

An easy workaround for this is to simply draw your shapes twice, the first time filled, and the second time not filled, so that OF draws lines, which it software anti-aliases.

~~~~{.cpp}
    ofFill();
    
    ofBeginShape(); //shape
    	ofVertex( 1,1 );
    	ofVertex( 5,5 );
    	ofVertex( 1,10 );
    	ofVertex( 1,1 );
    ofEndShape();
    
    
    ofNoFill();
    
    ofBeginShape(); //smoothed edges
    	ofVertex( 1,1 );
    	ofVertex( 5,5 );
    	ofVertex( 1,10 );
    	ofVertex( 1,1 );
    ofEndShape();
~~~~

### Displaying video problem/feature related to ofSetColor

Although this is a problem/feature affecting any object that uses an ofTexture draw itself to the screen, I first encountered it with the videoGrabber, and I think that may be the case for many people, so I'm listing it as the video problem/feature.

Basically, ofTextures are constructed so that they can be tinted by the ofSetColor() call. This is great as long as you know it's going to happen, but if it catches you by surprise it can be really confusing, especially if your background is black and you have just called 

~~~~{.cpp}
    ofSetColor(0,0,0);
~~~~

which would make whatever ofTexture you're telling to draw not show up at all.

The solution to this is easy, just make sure that right before you tell any ofTextures to draw, you call ofSetColor() and set it to white, or whatever tint you want to use.

### Processing background() vs. OF ofBackground()

In Processing, making the background() call automatically tells Processing to set the background to be set every frame to the color you specified in your function call.

Of can make it auto-refresh every frame, there is a separate function to call:

~~~~{.cpp}
    ofSetBackgroundAuto(true);
~~~~

This function will make the background autorefresh with the last ofBackground() call, without having to re-call it each time inside draw().
If you don't want to redraw, but make a cumulative image, use:

~~~~{.cpp}
    ofSetBackgroundAuto(false);
~~~~
    

Because by default OF redraws the screen every frame.

### ofFill() / ofNoFill() vs. processing fill() noFill()

In processing, you can toggle fills and strokes:
fill(), noFill.
stroke(), noStroke.

In Openframeworks, it's one or the other.
C++  :
JAVA/P5:

ofFill();
fill(); noStroke();

ofNoFill();
noFill(); stroke(1);

additionally, there is no way to change the stroke width built into openFrameworks.
A way around this is to change the stroke size with an openGL call, but it doesn't look that great.

~~~~{.cpp}
    glLineWidth(STROKE_SIZE);
~~~~

  
### Math functions, and where they come from (no more Math.\*)

Math functions in OpenFrameworks actually come from three separate files

#### cmath

Complex math functions (trigonometric, hyperbolic, exponential, logarithmic, power, rounding, absolute value and remainder functions) come from the cmath library (math.h), and are included by default in OF.

A list of these functions is available at:
[http://www.cplusplus.com/reference/clibrary/cmath/][75]

#### ofConstants

Other basic math functions are provided by the ofConstants file.

These include:

Constants:

*   PI;
*   TWO\_PI;
*   M\_TWO\_PI;
*   FOUR\_PI;
*   HALF\_PI;
    

and Functions:

*   DEG\_TO\_RAD();
*   RAD\_TO\_DEG();
*   MIN(x,y);
*   MAX(x,y);
*   CLAMP(val,min,max);
*   ABS(\[math functions you want to get the absolute value of\]);
    

#### ofMath

additionally ofMath() provides functions for getting random values.

[http://www.openframeworks.cc/documentation\#ofMath-about][78]

### Structs, what are they for, and how can we use them?

Structs are like miniature classes except they don't have methods. Basically they're custom data objects.

They're very convenient because they don't have to be created externally from your class files (although technically neither do classes..) 

Primarily they're used for implementing linked lists (similar to ArrayLists in java). Although linked lists are probably my favorite data structure, I'm not going to write a tutorial here because they can be very complicated at first.

A very inclusive tutorial on linked lists can be found here:
[http://richardbowles.tripod.com/cpp/linklist/linklist.htm][80]

Anyway, the general format of a struct is :


    struct [name]
    {
    	[varType] varName;
    	[varType] varName;
    	[varType] varName;
    	[etc...]
    };
    

### Memory Management and You

In Java/p5 the way garbage collection works is that every few cycles the interpreter sweeps the ram looking for any used objects that have no pointers referencing them, and deletes them.

That means if you were to declare

~~~~{.cpp}
    myCustomDataType temp = new myCustomDataType();
    temp = null;
~~~~

temp was set to reference a newly created myCustomDataType. temp was then set equal to null. This did not actually clear the new myCustomDataType from ram, but whenever java's garbage collection runs it would notice that the new myCustomDataType has no references and would delete it. 

Unlike java/p5 however, c++ does not have automated garbage collection. This means that if you have declared object and you want to get rid of it, you will have to delete it yourself. Setting a pointer to NULL is not good enough.

calling the comparable code in c++ would result in an empty pointer and some memory that had been allocated in the ram but now is lost forever. This is called a memory leak. Although it might not affect you right off the bat, memory leaks can lead to your program eating up all of its available memory and crashing. These can be very frustrating to debug because they happen over time and don't give you a specific line that's crashing your program. 

Fortunately, they're easy to avoid as long as you plan your programs carefully. The proper way to delete an object after you have created it is to use the delete keyword

~~~~{.cpp}
    delete temp;
~~~~

### Basic Logic Problems

Zach Lieberman asked me to include a bit on conditional logic errors so here goes.

A very common conditional logic error is forgetting to restate your entire argument inside an if statement with an && (and) or || (or) operator.

For example:

~~~~{.cpp}
    int x = 5;
    if(x < 0 || > 10)
    {
        return true;
    }
    else
    {
        return false;
    }
~~~~

will always return true because ( \> 10) is always true. The proper way to write this would be:

~~~~{.cpp}
    int x = 5;
    
    if(x < 0 ||x > 10)
    {
        return true;
    }
    else
    {
        return false;
    }
~~~~
    

note how the entire argument is restated. Instead of asking:
is x less than 0 or greater than 10

you need to ask:
is x less than 0 or **is x** greater than 10

### accidental breakpoints in Xcode and Why Having a Debugger Rocks

[![Image:BkPt.jpg](002_images/BkPt.jpg)][84]

Breakpoints are something that you can put in by clicking on the far left column of the editing window. If you're compiling in debug mode:
[![Image:BuildConf.jpg](002_images/BuildConf.jpg)][85]

your program will stop running whenever it comes across one of these breakpoints and bring up the debugging console which lets you look at variable contents and the current running processes and things like that. 
[![Image:HilightedVar.jpg](002_images/HilightedVar.jpg)][86]

  
They're extremely convenient for debugging programs, but they can be confusing if you don't know what they are and they keep stopping your program.

To remove a debug point just click on it and drag it out of the window. You'll get a friendly poof of smoke and it'll be gone.
[0]: #column-one
[1]: #searchInput
[2]: #An-overview-of-OpenFrameworks-for-processing-junkies.
[3]: #how-processing-actually-works
[4]: #what-is-class-extending-base-and-sub-classes
[5]: #ok-so-what-does-this-have-to-do-with-processing
[6]: #how-openframeworks-works
[7]: #maincpp-in-depth
[8]: #java-vs-c-compile-processes
[9]: #how-classes-work-in-c-two-files
[10]: #testapph
[11]: #testappcpp
[12]: #what-the-fu42-a-very-basic-introduction-to-pointers
[13]: #value-vs-reference
[14]: #and-42
[15]: #so-where-do-i-use-this
[16]: #basic-data-types
[17]: #the-processing-string-exception
[18]: #pimage-updatepixels-vs-oftexture-pixels9193
[19]: #how-are-pixel-values-stored-without-a-color-object
[20]: #common-problems-with-c-misc-topic
[21]: #expecting-implicit-data-conversion
[22]: #changing-window-size
[23]: #update-and-draw
[24]: #how-in-the-world-do-i-print-to-the-console
[25]: #printf
[26]: #iostream
[27]: #smoothing-not-working-on-filled-shapes
[28]: #displaying-video-problemfeature-related-to-ofsetcolor
[29]: #processing-background-vs-of-ofbackground
[30]: #offill-ofnofill-vs-processing-fill-nofill
[31]: #math-functions-and-where-they-come-from-no-more-math42
[32]: #cmath
[33]: #ofconstants
[34]: #ofmath
[35]: #structs-what-are-they-for-and-how-can-we-use-them
[36]: #memory-management-and-you
[37]: #basic-logic-problems
[38]: #accidental-breakpoints-in-xcode-and-why-having-a-debugger-rocks
[48]: http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html "http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html"
[51]: http://www.cplusplus.com/doc/tutorial/pointers.html "http://www.cplusplus.com/doc/tutorial/pointers.html"
[58]: http://www.openframeworks.cc/documentation#ofImage-setUseTexture "http://www.openframeworks.cc/documentation#ofImage-setUseTexture"
[66]: http://www.cplusplus.com/reference/clibrary/cstdio/printf.html "http://www.cplusplus.com/reference/clibrary/cstdio/printf.html"
[68]: http://members.gamedev.net/sicrane/articles/iostream.html "http://members.gamedev.net/sicrane/articles/iostream.html"
[75]: http://www.cplusplus.com/reference/clibrary/cmath/ "http://www.cplusplus.com/reference/clibrary/cmath/"
[78]: http://www.openframeworks.cc/documentation#ofMath-about "http://www.openframeworks.cc/documentation#ofMath-about"
[80]: http://richardbowles.tripod.com/cpp/linklist/linklist.htm "http://richardbowles.tripod.com/cpp/linklist/linklist.htm"


