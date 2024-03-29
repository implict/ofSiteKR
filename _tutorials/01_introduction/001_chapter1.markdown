ofTutorials - Chapter 1 - Getting Started
=========================================

Jeff Crouse\
 \<<jeff@crouse.cc>\>\
 version 0.1, February 2012\

Table of Contents

**JavaScript must be enabled in your browser to display the table of
contents.**

This chapter will help you get started with the basics of
openFrameworks, such as the proper method for creating a project,
setting window size, and basic drawing. But first…

1. Your First Look inside oF {#_your_first_look_inside_of}
----------------------------

By this point, I assume that you’ve [downloaded openFrameworks and
followed the appropriate setup
guide](http://www.openframeworks.cc/download/). So the first thing
you’ll want to do is uncompress the openFrameworks archive and place the
resulting folder somewhere you can easily access. Personally, I like to
drop it in my Documents folder and then put a shortcut in my sidebar,
like this:

![Shortcut](images/shortcut.png)

No matter where you put it, when you open up the folder, you should see
a set of folders that looks basically like this:

![addons](images/structure1.png)

So what are these folders?

 addons 
:   The "core" openFrameworks contains only the most essential
    functionality. Everything in the addons folder can be added to an
    application piecemeal. This includes stuff like reading an XML file,
    loading a 3D model, or using the computer vision library, openCV.

 apps 
:   This is where the applications that you make will be stored, and
    where you will be working most of the time. You will notice that
    there are already a folder in "apps" called "myApps".

 examples 
:   This folder contains example applications that illustrate some of
    the things that openFrameworks can do.

 libs 
:   This folder contains all the libraries that openFrameworks uses as
    well as the ofCore.

2. Take a Tour of the Examples {#_take_a_tour_of_the_examples}
------------------------------

The "examples" folder contains openFrameworks projects that illustrate
some of the things that openFrameworks can do. Before you get into
making your own app, it’s a good idea to take a tour of all of the
example applications. The process is slightly different depending on
which IDE you are using.

### 2.1. XCode {#_xcode}

Navigate to examples/graphicsExample and double-click on
"graphicsExample.xcodeproj".

![navigate to graphicsExample](images/graphicsExample01.png)

You should see a window that looks something like this:

![graphicsExample 02](images/graphicsExample02.png)

  ------------------------------------ ------------------------------------
  ![Important](./images/icons/importan
  t.png)
  Find out which version you are using
  in the menubar: XCode \> About
  XCode. If you are using XCode \< 4.0
  the window will look significantly
  different, but don’t panic — it
  should be fairly easy to find the
  corresponding interface features.
  ------------------------------------ ------------------------------------

You’ll notice a big "Run" button at the top left side of the screen. In
XCode 3, it is called "Build & Run". That will run the currently active
target. But you might find that, by default, the active target is the
openFrameworks library, which, by itself, doesn’t do anything. What we
want to run is "graphicsExample" program. So if you see this:

![openFrameworks library chosen](images/target-bad.png)

Click and drag down so that it looks like this:

![graphicsExample target chosen](images/target-good.png)

Now click "Run!" You should see this:

![graphicsExample, running](images/graphicsExample03.png)

Press escape or Apple+Q to exit out of the program.

+--------------+--------------+--------------+--------------+--------------+--------------+
| ![Warning](. |
| /images/icon |
| s/warning.pn |
| g)           |
| Troubleshoot |
| ing          |
| compilation  |
| If you are   |
| getting      |
| errors, try  |
| switching    |
| the "Base    |
| SDK" setting |
| to 10.6      |
|              |
| 1.  Click on |
|     the      |
|     "graphic |
| sExample"    |
|     in the   |
|     section  |
|     on the   |
|     far left |
|              |
| 2.  Click on |
|     "Build   |
|     Settings |
| "            |
|     as shown |
|     below    |
|              |
| 3.  Make     |
|     sure the |
|     "All"    |
|     and      |
|     "Combine |
| d"           |
|     ovals    |
|     are      |
|     selected |
|     as shown |
|     below    |
|              |
| 4.  Next to  |
|     **Base   |
|     SDK**,   |
|     click    |
|     and drag |
|     to       |
|     "10.6"   |
|              |
| ![10.6       |
| Fix](images/ |
| tenpointsix. |
| png)         |
|              |
| It’s         |
| possible     |
| that you     |
| will have to |
| do this for  |
| every        |
| project, so  |
| you might as |
| well get     |
| used to it   |
| :)           |
+--------------+--------------+--------------+--------------+--------------+--------------+

Now you should open and run all of the other examples.

3. Creating Your First Project {#_creating_your_first_project}
------------------------------

As mentioned in the introduction, openFrameworks takes care of most of
the tedious work of setting up a c++ project in your IDE of choice.
However, unlike programs like Flash or Processing, there is no "File \>
New" that allows you to create a project. Instead, the preferred method
is to duplicate one of the example projects.

  ------------------------------------ ------------------------------------
  ![Important](./images/icons/importan
  t.png)
  By extension, this means that you
  should never edit any of the example
  projects or put your own apps into
  the examples folders. They are
  placed there to provide starting
  points for your own apps, but you’ll
  want to keep them pristene so that
  you always have a working starting
  point for your projects. You’ll see
  the importance of this more as you
  move forward.
  ------------------------------------ ------------------------------------

As simple as this seems, this can be a huge stumbling block for a lot of
beginners, so first lets agree on some terminology.

When you open your apps folder, you see a *myApps* folder. Let’s call
these folders like this one **workspaces**.

If you open the *myApps* workspace, you see the *emptyExample* folder,
which we will call a **project**. Each project contains (among other
things) an ".xcodeproj" file and a "src" folder. A **project** *must* be
inside a **workspace** and can be compiled into a single application.

![Workspace terminology](images/workspace04.png)

We want to create a **project**, but every project has to live inside a
**workspace**, so lets use this handy **myApps** workspace. You can use
workspaces them however you want, but the important thing is that they
are directly inside the "apps" folder, ie: you can’t have a workspace
inside another workspace.

First we will duplicate (NOT rename) the entire "emptyExample" folder.
On a mac, you can literally right-click on the emptyExample folder, and
click *Duplicate*. So the result should look like this:

![emptyExample Copy](images/workspace02.png)

Next, we can rename the duplicate project folder from "emptyExample
Copy" to "myFirstProject".

![My First Project](images/workspace03.png)

The super important thing here is that your XCode Project file is
**exactly** 3 folders "below" the Root Folder (refer to colorful diagram
above). So, whenever you make a new project, or if you are suddenly
getting thousands of errors for no apparent reason, you should always
double check that your XCode Project file is in the correct place.

The reason for this has to do with the *lib* folder. We previously
mentioned that openFrameworks is a "glue" for a bunch of different
libraries, and these libraries are located in the *lib* directory. We
also discovered that it is the the job of the IDE know how to find and
link together the various libraries. So, when the IDE tries to compile
your program, it is set up to look for libraries in "../../../lib", or,
in other words: "go back three folders
([relative](http://support.dtsearch.com/webhelp/dtsearch/relative_paths.htm)
to your .xcodeproj) and then look for a lib directory." For instance, if
you dig deep into the settings of any openFrameworks project, you will
find paths like "../../../libs/FreeImage/include" and
"../../../libs/poco/include". So, as long as your .xcodeproj file is
within of\_v0.8.0\_osx\_release/apps/[workspace]/[project], everything
will compile. If not, things will get ugly.

Okay! Now you have created your first very own openFrameworks project.
Double click on the XCode Project file in your new "myFirstProject" and
make sure "emptyExample" is selected as the target and click "Run" and
you should see:

![Plain Gray Window](images/PlainGray.png)

Nothing! But that’s exactly what you should see. Well, it’s not too
exciting yet, but you are well on your way.

Press escape or Apple+Q to exit out of the program.

+------------+------------+------------+------------+------------+------------+------------+
| ![Warning] |
| (./images/ |
| icons/warn |
| ing.png)   |
| Renaming   |
| your       |
| Project in |
| XCode      |
| You might  |
| be tempted |
| to also    |
| rename     |
| "emptyExam |
| ple.xcodep |
| roj"       |
| to         |
| "myFirstPr |
| oject.xcod |
| eproj",    |
| and if you |
| are using  |
| XCode \<   |
| 4, you     |
| can. But   |
| as of      |
| XCode 4,   |
| this seems |
| to cause   |
| some       |
| problems.  |
| So,        |
| instead,   |
| open up    |
| your       |
| project in |
| XCode and  |
| click on   |
| the        |
| "emptyExam |
| ple"       |
| title in   |
| the upper  |
| left as    |
| shown      |
| here:      |
|            |
| ![Renaming |
| your       |
| Project](i |
| mages/rena |
| me01.png)  |
|            |
| After you  |
| rename it, |
| you will   |
| get a      |
| dialog box |
| asking you |
| if you’d   |
| like to    |
| rename a   |
| bunch of   |
| other      |
| stuff.     |
| Click      |
| "Rename"   |
|            |
| ![Renaming |
| your       |
| Project](i |
| mages/rena |
| me02.png)  |
|            |
| voila!     |
+------------+------------+------------+------------+------------+------------+------------+

When you click "Run" from within XCode, what actually happens behind the
scenes is that your code is compiled into an executable and placed
within the "bin" directory. Then that application is run just as if you
had double clicked it. So, if you look in
"myApps/MyFirstApplication/bin" folder, you should see an application
icon. This is your application! If you double-click on it, you will see
the same gray window. Now you can send this application to all of your
friends (who use a Mac) and they can launch your wonderful gray window
program.

![Your Executable](images/workspace05.png)

4. Writing Code {#_writing_code}
---------------

Okay, now that you know how to create a project, it’s time to start
writing some code inside it. The next few sections will introduce you to
the structure of an openFrameworks application and a few simple drawing
and setup functions.

### 4.1. testApp.cpp {#_testapp_cpp}

So it’s finally time to start looking at some code. The first thing you
need to do is open up a project in XCode. I’m going to assume that we
are working with "myFirstProject" inside the workspace "myApps" from the
last section. When you first open it up, take a look in the **Navigator
View** (the panel on the far left of XCode) and click the disclosure
triangle like this:

![Open up the project](images/expand01.gif)

1.  Click the disclosure triangle next to "MyFirstProject"

2.  Click the disclosure triangle next to "src"

3.  Click on testApp.cpp

testApp.cpp is going to become your very good friend over the next few
tutorials. In the **Editor Window**, you should see something that
starts like this:

    #include "testApp.h"

    //--------------------------------------------------------------
    void testApp::setup(){

    }

    //--------------------------------------------------------------
    void testApp::update(){

    }

    //--------------------------------------------------------------
    void testApp::draw(){

    }

    //--------------------------------------------------------------
    void testApp::keyPressed(int key){

    }

So what is going on here?

In a lot of ways, testApp.cpp is like hello.cpp, the file that we wrote
in the Introduction. It’s a plain text file that contains c++ source
code. The difference now is that we are editing it through our IDE, so
there is some really nice syntax highlighting that will hopefully make
it easier to make sense of the code, and it will be a lot easier to
compile and run when we want to.

On a very basic level, what you see here is a bunch of empty functions.
A [function](http://en.wikipedia.org/wiki/Function_(computer_science))
is a set of instructions that make up part of a larger program. Just in
the snippet of code above, there are 4 functions: setup, update, draw,
and keyPressed. Each of the functions is followed by a set of curly
brackets ({}). What usually goes inside of these curly brackets are the
instructions (assiging values to variables, loops, and calls to other
functions) that make up the functions.

If you refer back to the Q&A "What is a software framework?" in the
introduction, the film production company analogy is particularly useful
at this point. What you are looking at in testApp.cpp is how
openFrameworks has provided all of the infrastructure and logistical
details. Now it’s your job to define what happens. You do this by
putting code into the fuctions in testApp.cpp

These functions will be called by openFrameworks at different points
during the execution of your program. Let’s take a look at a few of
them.

 setup 
:   This function is called (ie: any code that you’ve put inside the
    curly brackets runs) at the very beginning of the life of your
    application, before your program window opens. So, let’s say, for
    instance, you wanted to set the size of the window. You probably
    want this to happen before the window actually opens, so setup would
    be a good place for that.

 update, draw 
:   After the setup function runs, the update and draw functions begin a
    loop that continues until your program ends. So, after setup() runs,
    update() runs, then draw(), then update(), then draw(), etc. and by
    default, this happens as fast as your computer can handle. update()
    is typically used for updating the state of your program (ie:
    changing the value of variables), while draw() is used to actually
    draw things into your window.

 keyPressed, keyReleased, mouseMoved, mouseDragged, mousePressed, mouseReleased, windowResized, gotMessage, dragEvent 
:   Unlike the previous three functions, these functions are called only
    when a user does something. Can you guess what?

But enough with the reading. Let’s see these things in action.

### 4.2. Making a Mark {#_making_a_mark}

We will start by drawing a simple circle in our gray window using the
ofCircle function. Type ofCircle(200, 200, 60); on the blank line inside
the draw() function so that your draw function looke like this:

    void testApp::draw(){
        ofCircle(200, 300, 60);
    }

  ------------------------------------ ------------------------------------
  ![Note](./images/icons/note.png)
  Notice the semicolon at the end of
  the line. All function calls must
  end with a semicolon. In addition,
  function names are always case
  sensitive, so OfSetColor will not
  work, nor OFsetcolor, etc. only
  ofSetColor.
  ------------------------------------ ------------------------------------

Now run your program. You should see something like:

![A Plain White Circle](images/MyFirstProject01.png)

Congratulations! You just made something appear on the screen! It’s all
downhill from here.

But what did we just do?

[ofCircle](/documentation/graphics/ofGraphics.html#show_ofCircle) is a
function that comes with openFrameworks (hence the *of* prefix). You can
invoke the ofCircle function inside your draw function as many times as
you’d like. The numbers inside of the parenthesis after *ofCircle* are
called
[arguments](http://en.wikipedia.org/wiki/Parameter_(computer_programming)).
They determine exactly what the function does. They answer the
questions: "okay, you want to draw a circle, but where? and how big?"
Functions can take any number of arguments, always separated by commas,
but ofCircle takes 3: an x coordinate, a y coordinate, and a radius.
There are a few things you need to know to make sense of these
arguments:

1.  All measurements in openFrameworks are in pixels. By saying that our
    circle has a radius of 60, that means that it will take up PI\*60^2^
    pixels total.

2.  This may seem obvious, but the coordinates refer to the center of
    the circle. Other shapes (such as rectangles) use the upper left
    corner.

3.  The "origin" of the coordinate system is in the upper left of the
    window. So, our circle appears 200 pixels from the left side of the
    screen, and 300 pixels from the top.

  ------------------------------------ ------------------------------------
  ![Note](./images/icons/note.png)
  The order of the arguments is
  important. The first argument to
  ofCircle will always mean "x
  coordinate" and the third will
  always mean "radius".
  ------------------------------------ ------------------------------------

  ------------------------------------ ------------------------------------
  ![Note](./images/icons/note.png)
  There are some functions (such as
  [ofFill](/documentation/graphics/ofG
  raphics.html#show_ofFill),
  which simply tells oF to fill shapes
  that are drawn) that have 0
  arguments, but you still have to put
  parenthesis after them.
  ------------------------------------ ------------------------------------

If you hadn’t just read about it here, you could have found information
about ofCircle on the [openFrameworks documentation
page](/documentation/), which you will be using more as we move on.

### 4.3. Adding some Color {#_adding_some_color}

Your circle is great, but kind of boring. What if we want to introduce
some color to our application? To do that, we need the the
[ofSetColor](/documentation/graphics/ofGraphics.html#show_ofSetColor)
function. Try adding ofSetColor(255, 0, 255); right above the ofCircle
line, so that your draw function looks like this:

    void testApp::draw(){
        ofSetColor(255, 0, 255);
        ofCircle(200, 300, 60);
    }

Now try running your application.

![A purple circle](images/MyFirstProject02.png)

Similar to ofCircle, the ofSetColor function takes 3 arguments, but the
numbers have very different meanings. If you look at the documentation
for
[ofSetColor](/documentation/graphics/ofGraphics.html#show_ofSetColor),
you’ll notice that they arguments actually represent the red, green, and
blue values for the color that you want to use, on a scale of 0-255. So
when we typed ofSetColor(255, 0, 255);, we were saying "until further
notice, draw everything with 100% red, 0 green, and 100% blue."

  ------------------------------------ ------------------------------------
  ![Tip](./images/icons/tip.png)
  Try changing the values to get
  different color variations.
  ------------------------------------ ------------------------------------

This last point is important: when we call "ofSetColor", it’s like
picking a crayon out of a box. Everything that gets drawn after that
(below that line of code) will be drawn in that color until we call
ofSetColor again. So if we want to draw another circle on the screen, we
could simply call the ofCircle function again:

    void testApp::draw(){
        ofSetColor(255, 0, 255);
        ofCircle(200, 300, 60);

        ofCircle(500, 500, 100);
    }

But if we wanted that circle to be a different color, we would have to
call ofSetColor again:

    void testApp::draw(){
        ofSetColor(255, 0, 255);
        ofCircle(200, 300, 60);

        ofSetColor(0, 255, 255);
        ofCircle(500, 500, 100);
    }

![Two Colorful Circles](images/MyFirstProject03.png)

### 4.4. All The Shapes You Can Handle {#_all_the_shapes_you_can_handle}

Of course, oF can draw more than circles.

1.  [ofRect](/documentation/graphics/ofGraphics.html#show_ofRect) draws
    a rectangle. arguments are (x, y, width, height)

2.  [ofTriangle](/documentation/graphics/ofGraphics.html#show_ofTriangle)
    draws a triangle. arguments are the coordinates of the three points:
    (x1, y1, x2, y2, x3, y3)

3.  [ofLine](/documentation/graphics/ofGraphics.html#show_ofLine) draws
    a line. arguments are the start coordinate and the end coordinate
    (x1, y1, x2, y2)

4.  [ofEllipse](/documentation/graphics/ofGraphics.html#show_ofEllipse)
    arguments are: (x, y, width, height)

5.  [ofCurve](/documentation/graphics/ofGraphics.html#show_ofCurve)
    Draws a curve from point (x1, y1) to point (x2, y2). The curve is
    shaped by the two control points (x0,y0) and (x3,y3).

  ------------------------------------ ------------------------------------
  ![Note](./images/icons/note.png)
  Control points can be tricky. If
  you’ve used the pen tool in
  photoshop or illustrator, you
  probably understand them. If not,
  check out [this
  tutorial](http://www.actionscript.or
  g/resources/articles/172/1/Understan
  ding-curves-and-control-point-placem
  ent/Page1.html).
  It’s about ActionScript, but it
  gives a great overiew of the concept
  of curves and control points.
  ------------------------------------ ------------------------------------

  ------------------------------------ ------------------------------------
  ![Tip](./images/icons/tip.png)
  Try making 3 different projects in
  your "MyFirstWorkspace" workspace.
  In each one, draw a different shape
  in a different location using a
  different color.
  ------------------------------------ ------------------------------------

### 4.5. Adding Movement {#_adding_movement}

Drawing static shapes is great, but what if we want our shapes to move
around the screen?

We mentioned earlier that the draw() function is called repeatedly after
the program is started. This is very important because it is how we
achieve animation in openFrameworks. It might be a little unintuitive if
you are used to Flash or even something like stop-frame animation, where
you can add something to a "stage" and then reposition it as needed.
This is **not** how openFrameworks (or most computer animation) works.
Actually, openFrameworks is more like traditional (we’re talking
old-school Disney/Bambi) animation, where we must redraw the frame
completely every single "frame". In the parlance of openFrameworks,
every time the draw() function is called is one "frame". So, in
actuality, when you run the program above and see your purple circle,
what you are actually looking at is the circle being drawn, then cleared
(a single frame), and then drawn, then cleared, repeatedly. It’s just
happening so fast that it appears to stay where it is.

In the example above, when we draw our circle, we use two numbers to
tell the ofCircle function where to draw the circle within the window.
So it follows that, if we want the circle to appear to move, we need to
change these numbers over time. Perhaps the first time draw() happens,
the circle is drawn at (200, 300), but in the next time, we want it to
be one pixel to the right (201, 300), and then another pixel to the
right (202, 300), and so on.

In c++, and in programming in general, whenever you have a value that
you want to change, you create a "variable". Variables come in different
shapes and sizes depending on what they represent, such as decimal
numbers, whole numbers, a letter, or a bunch of letters. In this case,
we want to create variables that can stand in for coordinates in our
ofCircle function, so we will use 2 **int**s.

Put this at the top of your testApp.cpp, right under the \#include line,
so that your file starts like this:

    #include "testApp.h"

    int myCircleX;
    int myCircleY;

In those 2 new lines of code, we "declared" 2 new variables: one called
*myCircleX* and one called *myCircleY*. You could actually name them
whatever you want (within reason), but it’s a good idea to name them
something that is related to how they will be used. We also said that
these variables will be used to hold whole-number integer values, or
**int**s. Declaring a variable is an important and necessary step. It’s
like telling your application "okay, I’m going to need to store a number
that might change."

The next thing we need to do is give those variables a starting value.
We know that the endgame here is to have these variables change over
time. But before we can change them, we need to give them an initial
value. In other words, before our circle starts moving, where will it
appear?

In a previous section, we learned that the setup() function gets called
once when the application launches, and then never called again. This
sounds like it could be useful for giving our variables some initial
values. So in your setup() function, add the following lines.

    void testApp::setup(){
        myCircleX = 300;
        myCircleY = 200;
    }

Perfect! So, to recap, we now have 2 variables, *myCircleX*, and
*myCircleY*, and we have just "initialized" them, or populated with an
"initial" value. Notice that, just like any mathmatical equation, we use
the equals sign (=) to assign the number 300 to *myCircleX*. In c++
parlance, the equals sign is known as the "assignment operator", because
it’s used to assign a value to a variable. The "assignment" always flows
from right to left; that is, the value that is being assigned is on the
right and thing that is receiving the assignment is on the left.

Now we can edit our ofCircle call a bit :

    void testApp::draw(){
        ofSetColor(255, 0, 255);
        ofCircle(myCircleX, myCircleY, 60);
    }

Notice that we are still passing 3 arguments to the ofCircle function.
But now, instead of the old "hard-coded" (200, 300) values that we can’t
change, we are letting the variables that we made stand in.

If you run your app now, you shouldn’t notice any change. That’s because
we haven’t gotten around to changing the variables yet. So let’s do it.

Let’s edit our draw function a little so that it looks like this:

    void testApp::draw(){
        myCircleX = myCircleX + 1;

        ofSetColor(255, 0, 255);
        ofCircle(myCircleX, myCircleY, 60);
    }

In this new line, we are using the "assignment operator" again, just
like in the setup function. In English, that line would say "take the
value of myCircleX plus one, and assign that to myCircleX". In other
words, we are incrementing myCircleX by 1. c++ provides a shortcut for
the common task of incrementing a variable: myCircleX++; This is
extremely common, so let’s actually change our code to use this handy
shortcut:

    myCircleX = myCircleX + 1;

becomes

    myCircleX++;

If you run your program now, you should see your circle move off the
screen to the right! Animation!

There is just one thing we need to fix before moving on to more pressing
aesthetic concerns. If you read back through the descriptions of what
the update() and draw() functions are supposed to be used for, you’ll
notice that the draw function is for drawing (so far, so good), but the
update() function is where we are supposed to take care of updating
variables. There are some very good reasons for this that we will get
into later, but for now, let’s move the line we just wrote to the update
function. So, your update and draw functions should look like this:

    void testApp::update(){
        myCircleX++;
    }

    void testApp::draw(){
        ofSetColor(255, 0, 255);
        ofCircle(myCircleX, myCircleY, 60);
    }

You shouldn’t notice any difference in terms of functionality, but it’s
a good habit to get into.

### 4.6. Framerate {#_framerate}

One thing you may notice about your awesome moving circle is that it
starts off kind of slow and then speeds away. This is actually caused by
the framerate of your application, which is slow at first while the
application fires up, but then gets super fast. As mentioned before,
framerate refers to the rate at which the draw/update loop executes. Add
this little line of code to the bottom of your draw() function to be
able to see your framerate in the upper left corner of your window:

    ofDrawBitmapString(ofToString(ofGetFrameRate())+"fps", 10, 15);

Most likely, it says something very close to 1000fps. That means that
your circle is being drawn close to one thousand times per second. If
you were to fire up tons of other applications on your computer and
start rendering a huge video in FinalCut, you’d notice this framerate
drop. The fact is that your application is simply trying to run as fast
as it possibly can.

In the interest of having a smoother, more predictable kind of
animation, we will lower the framerate to something more reasonable,
like 60. In order to do this, we will put a new line into our setup()
function.

    void testApp::setup(){
        ofSetFrameRate(60);

        myCircleX = 300;
        myCircleY = 200;
    }

Add that and then run your program. You will notice that the circle
moves considerably slower. Using this function is **not** a guarantee of
60 frames per second, but it is a guarantee that your framerate won’t be
any higher than that. And unless you have a really old computer, or your
processor is already extremely taxed by some other program, it should
have no problem running consistently at 60fps while doing something a
simple as drawing a moving circle.

  ------------------------------------ ------------------------------------
  ![Tip](./images/icons/tip.png)
  SAT word problem \#1: If we know
  that the update loop is happening
  (at most) 60 times/second, and we
  are incrementing the x coordinate of
  the circle by 1 pixel every time
  update is called, how long will it
  take for the circle to move 240px?
  ------------------------------------ ------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| ![Tip](./images/ic |
| ons/tip.png)       |
| Too bloody slow    |
| It’s true that we  |
| now have a good    |
| handle on the      |
| framerate, but     |
| 60px/second turns  |
| out to be really   |
| slow. To fix this  |
| problem, we        |
| **could** increase |
| the framerate, but |
| 60fps is a pretty  |
| good framerate. so |
| instead, let’s     |
| change the speed   |
| of the circle      |
| itself: instead of |
| just incrementing  |
| the x coordinate   |
| by 1 pixel every   |
| time, let’s        |
| increment it by 4. |
| Using the same     |
| "incrementing"     |
| shortcut, we can   |
| change our         |
| update() function  |
| like this:         |
|                    |
|     void testApp:: |
| update(){          |
|         myCircleX+ |
| =4;                |
|     }              |
+--------------------+--------------------+--------------------+--------------------+

### 4.7. The Pacman Effect {#_the_pacman_effect}

Let’s have one final adventure with our purple circle before saying
goodbye. Our application is still a little dissapointing because once
our circle leaves the screen on the right, it’s gone forever. Let’s fix
that problem by making the circle re-appear on the left side after
leaving on the right: the Pacman Effect.

Before we write any code, let’s think about what this is going to mean
in terms of the variables that we have. In the current state, we have
myCircleX acting as the x coordinate for our circle, and it is being
incrementing by 1 (or 4, if you followed the tip above) every frame. By
default, an openFrameworks window is 1024x768. So, one way we could
achieve the Pacman Effect is to reset myCircleX back to 300 once it goes
beyond 1024.

How can we do this? We know that we are supposed to do any variable
updating in the update() function, so let’s start there. We also know
that we **only** want to reset myCircleX **if** it has gone above 1024.
So for that, we use the *if* statement.

    void testApp::update(){
        myCircleX++;
        if(myCircleX > 1024)
        {
            myCircleX = 300;
        }
    }

This code says:

-   increment myCircleX by one.

-   test if myCircleX is greater than 1024

-   **only** if that test turns out to be true, set myCircleX back to
    300;

5. Adding Interaction {#_adding_interaction}
---------------------

Now that you are a master of animation, it’s time to get the user
involved. For this section, we will be focusing on keyboard and mouse
interaction.

So far, we’ve been focusing on 3 functions: setup(), update(), and
draw(). For interaction, we will start with 2 of the other functions in
your testApp.cpp file:

    void testApp::keyPressed(int key){

    }

    void testApp::keyReleased(int key){

    }

Going back to the producer metaphor can help us understand how these
functions work. openFrameworks has done the hard work of setting up your
app to know when the user has done some keyboard business. Now, all you
have to do is put code into these functions that you want to execute
when a particular event occurs:

-   user physically presses down on a key

-   user physically releases the key

This might be a little unintuitive if you are accustomed to thinking
about typing a letter as a single action: "I just typed the letter *o*".
But in fact, they are 2 distinct actions, or "events", and eventually
you might find it handy to be able to distinguish between them.

Create a new project in "myApps" called "keyboardInteraction". If you
need to, go back to "Creating your First Project" to see how.

![Keyboard Interaction Project](images/KeyboardInteraction01.png)

### 5.1. Introducing, cout! {#_introducing_cout}

The easiest way to quickly see how these functions work is to print a
message to the console. Remember when we printed "Hello, World!" to the
console in the introduction? We did that using a c++ thing called
["cout"](http://www.cplusplus.com/reference/iostream/cout/) (pronounced
*c out*). The syntax for using it is a bit weird because it’s not
technically a function (it’s actually an object, which we will talk more
about in later chapters), but if you can get beyond the syntax, it’s
actually very useful for debugging.

But first: you may be asking yourself: how will we see text output? We
are dealing with a GUI interface now. Luckily, XCode provdes a window
where we can see anything text that your program outputs (also known as
[stdout](http://www.cplusplus.com/reference/clibrary/cstdio/stdout/)).

So start by going to View→Debug Area→Activate Console, or press
apple+shift+C

![Activate Console](images/activate-console.png)

  ------------------------------------ ------------------------------------
  ![Note](./images/icons/note.png)
  For XCode 3 users, use the key
  command Shift-Cmd-R. There’s also a
  preference in XCode to bring up the
  console after each launch -
  Xcode→Preferences→Debugging→On Start
  Show Console.
  ------------------------------------ ------------------------------------

You should see a panel like this appear at the bottom of your XCode
window

![Debug Area](images/debug-area.png)

Excellent! Your output will appear in the pane on the right. Now we will
add some code to our key functions that will print stuff to the console:

    void testApp::keyPressed(int key){
        cout << "keyPressed " << key << endl;
    }

    void testApp::keyReleased(int key){
        cout << "keyReleased " << key << endl;
    }

As I mentioned before, the syntax for cout is a little strange and,
frankly, way beyond the scope of this chapter. In c++ parlance, cout
represents the "standard output stream", and without worrying too much
about what that means, "stream" is a nice way to think about it. If you
look at the line of code within *keyPressed*, it appears that there is a
"stream" of data flowing into the "cout". First we send in the string
"keyPressed " down the stream, then we send in a variable: key. Finally,
we send
[endl](http://www.cplusplus.com/reference/iostream/manipulators/endl/)
down the stream. endl simply tells the console to go to the next line.

The *key* variable represents the key that was pressed or released. More
about this in a bit.

Let’s give it a try. Launch your program and type some keys. I will type
"qwerty". You should see something like this in the console:

    GNU gdb 6.3.50-20050815 (Apple version gdb-1708) (Thu Nov  3 21:59:02 UTC 2011)
    Copyright 2004 Free Software Foundation, Inc.
    GDB is free software, covered by the GNU General Public License, and you are
    welcome to change it and/or distribute copies of it under certain conditions.
    Type "show copying" to see the conditions.
    There is absolutely no warranty for GDB. Type "show warranty" for details.
    This GDB was configured as "x86_64-apple-darwin".tty /dev/ttys002
    [Switching to process 92317 thread 0x0]
    keyPressed 113
    keyReleased 113
    keyPressed 119
    keyReleased 119
    keyPressed 101
    keyReleased 101
    keyPressed 114
    keyReleased 114
    keyPressed 116
    keyReleased 116
    keyPressed 121
    keyReleased 121

Don’t worry about the crap at the beginning — that’s added by the
debugger.

The fact that the *key* is supplied as an *int* may seem a bit strange.
Perhaps you were expecting a string or a char? In fact, what this number
represents is the [ASCII code](http://www.asciitable.com/) for the key
pressed. Check out this table:

![ASCII Table](images/ascii_table.jpg)

On the right of each column in red, you will see a key on your keyboard.
Under the corresponding "Dec" (decimal=base 10) column, you will see the
number that you will receive in the key functions.

+--------------------+--------------------+--------------------+--------------------+
| ![Tip](./images/ic |
| ons/tip.png)       |
| You can actually   |
| use something      |
| called [type       |
| casting](http://ww |
| w.cplusplus.com/do |
| c/tutorial/typecas |
| ting/)             |
| to turn the int    |
| into a *char*, or  |
| letter. Simply put |
| "(char)" before    |
| the "key" variable |
| so that your cout  |
| statement looks    |
| like this:         |
|                    |
|     cout << "keyPr |
| essed " << (char)k |
| ey << endl;        |
|                    |
| More about type    |
| casting later in   |
| this chapter!      |
+--------------------+--------------------+--------------------+--------------------+

Fantastic. But presumably we want to do more with the key presses than
print to the console. Let’s use the keys to move a ball around on the
screen.

Start by adding two variables to your testApp and using them to draw a
circle, just like we did in the Adding Movement section:

    #include "testApp.h"

    int myCircleX;
    int myCircleY;

    void testApp::setup(){
        myCircleX = 300;
        myCircleY = 200;
    }

    void testApp::update(){

    }

    void testApp::draw(){
        ofSetColor(255, 0, 255);
        ofCircle(myCircleX, myCircleY, 60);
    }

In the Adding Movement section, we used variables so that we could have
the circle move by itself. The difference this time is that we want the
ball to move in response to our keyboard input. This means that we need
to modify the values of the variables depending on which keys are
pressed rather than incrementing it automatically every frame. So it
follows that we need to change the value of myCircleX and myCircleY in
mousePressed() (or mouseReleased() — it’s up to you!) instead of
update().

Let’s use a typical computer game keyboard scheme: say we want the ball
to move up when we press *w*, to the left when we press *a*, down when
we press *s*, and right when we press *d*. We could start by looking up
the ASCII values and finding that the values are 119, 97, 115, and 100,
respectively. Next, we think about what "up", "down", "left" and "right"
mean in terms of our variables: myCircleX and myCircleY. What we end up
with is:

    void testApp::keyPressed(int key){
        if(key==119) // 'w' key
        {
            myCircleY--;
        }
        if(key==97) // 'a' key
        {
            myCircleX--;
        }
    }

As we discovered, any time any key is pressed, the keyPressed() function
is called. However, we want to be more selective than that. We want to
be able to make certain things happen when the *w* key is pressed, and
other things happen when the *a* key is pressed, etc. So, we need to add
some [if statements](http://www.cprogramming.com/tutorial/lesson2.html).
When the keyPressed function is called, the first thing that happens is
we test if *key* is equal to 119.

Notice the double equals sign. This signifies that we are performing a
comparison rather than an assignment. In other words, we don’t want to
assign the value 119 to the variable *key*, we want to test whether key
is equal to 119. If this turns out to be true, than the code inside the
curly brackets immediately following the if() is executed.

Your challenge is to complete the function to respond to the *s* and *d*
keys.

+--------------------------+--------------------------+--------------------------+
| ![Tip](./images/icons/ti |
| p.png)                   |
| This also works!         |
|                          |
|     if(key=='w')         |
|     {                    |
|         myCircleY--;     |
|     }                    |
|     if(key=='a')         |
|     {                    |
|         myCircleX--;     |
|     }                    |
+--------------------------+--------------------------+--------------------------+

6. Mighty Mouse {#_mighty_mouse}
---------------

Keyboard interaction is great, but what about the mouse? You might have
noticed the following functions hanging out in testApp also:

    void testApp::mouseMoved(int x, int y ){

    }

    void testApp::mouseDragged(int x, int y, int button){

    }

    void testApp::mousePressed(int x, int y, int button){

    }

    void testApp::mouseReleased(int x, int y, int button){

    }

Create a new project called MouseInteraction so we can play with them.

![Mouse Interaction Project](images/MouseInteraction01.png)

Let’s do the same thing with the mouse functions that we did with the
key functions. Add the following to your project:

    void testApp::mouseMoved(int x, int y){
        cout << "mouseMoved: " << x << ", " << y << endl;
    }

    void testApp::mouseDragged(int x, int y, int button){
        cout << "mouseDragged: " << x << ", " << y << " button: " << button << endl;
    }

    void testApp::mousePressed(int x, int y, int button){
        cout << "mousePressed: " << x << ", " << y << " button: " << button << endl;
    }

    void testApp::mouseReleased(int x, int y, int button){
         cout << "mouseReleased: " << x << ", " << y << " button: " << button << endl;
    }

The *x* and *y* variables in the cout statement represent the location
of the mouse click — very handy information to have.

Run the program and you should see something like this:

    mouseMoved: 627, 500
    mouseMoved: 619, 500
    mouseMoved: 610, 500

    ...

    mouseMoved: 426, 473
    mouseMoved: 426, 476
    mouseMoved: 427, 478
    mousePressed: 426, 478 button: 0
    mouseDragged: 427, 477 button: 0

    ...

    mouseDragged: 548, 411 button: 0
    mouseDragged: 547, 411 button: 0
    mouseDragged: 546, 411 button: 0
    mouseReleased: 546, 411 button: 0
    mouseMoved: 544, 411
    mouseMoved: 543, 411
    mousePressed: 543, 411 button: 0
    mouseDragged: 542, 411 button: 0

    ...

    mouseDragged: 433, 396 button: 0
    mouseDragged: 433, 377 button: 0
    mouseReleased: 433, 377 button: 0
    mouseMoved: 434, 370
    mouseMoved: 433, 367

There are a few important things to notice about this output. First, you
will probably see a ton of "mouseMoved" messages. Indeed, this function
is called whenever the mouse is moved so much as a single pixel, so be
aware of this when adding code to mouseMoved. Next, notice that you see
a "mousePressed" before every "mouseDragged" event, and then a bunch of
"mouseDragged" messages, and then "mouseReleased" before it switches
back to "mouseMoved".

### 6.1. Interacting With Graphics {#_interacting_with_graphics}

So now we know how to make something happen when the user does any mouse
business. But printing to the console is hardly the kind of interaction
we want. When it comes to interacting with GUI applications, the mouse
is used in a variety of ways: simple clicking, double-clicking,
dragging, hovering, gestures, etc. One very basic interaction is "user
clicks on something, something happens." Let’s see how we might
accomplish this.

Suppose, for instance, that we wanted our trusty circle to expand
whenever the user clicks on it. Let’s start by setting up a new project
called MouseInteraction2. It will start out very similar to our
*MouseInteraction* project:

    int myCircleX=200;
    int myCircleY=300;
    int myCircleRadius=100;

    void testApp::setup(){
    }

    void testApp::update(){
    }

    void testApp::draw(){
        ofSetColor(255, 0, 255);
        ofCircle(myCircleX, myCircleY, myCircleRadius);
    }

As you can see, we have added a new variable called *myCircleRadius*. It
should be clear that, if we want the circle to grow, all we have to do
is increase myCircleRadius. The trick will be to determine when this
should happen.

It’s clear that it has something to do with the mousePressed function
that we just discovered above. We know that mousePressed is called every
time the user clicks the mouse, so if we simply drop *myCircleRadius++;*
into the mousePressed function, we would be half way there. Try this
out.

    void testApp::mousePressed(int x, int y, int button){
        myCircleRadius++;
    }

You should find that the circle grows every time you click the mouse,
regardless of whether or not your clicked inside the circle. But our
challenge is to only grow the circle when the use clicks **inside** of
it. So how might we go about this?

Well, luckily we are dealing with a circle, which will make it
significantly easier. Because if we can determine the distance between
the center of the circle and the location of the mouse click, we can
compare this distance to the radius, and if it is less than the radius,
then the click was inside the circle. Take a look at the diagrams:

![Hit Test 1](images/hit-test-01.png)

We know that the radius of the circle = 300, and we know that the mouse
click is 230 pixels away from the center of the circle. So, was the
mouse click inside the circle?

![Hit Test 2](images/hit-test-02.png)

In this case, we know that the mouse click was 90 pixels from the center
of the circle, so the click was clearly inside the circle.

So how do we measure this distance? openFrameworks provides a function
called ofDist([x1], [y1], [x2], [y2]) that will save us from doing any
basic trigonometry. All we have to do is give it our two coordinates.

    void testApp::mousePressed(int x, int y, int button){
        float distance = ofDist(myCircleX, myCircleY, x, y);
        cout << distance << endl;

        myCircleRadius++;
    }

The *cout* will allow us to check what kind of values we are getting
from ofDist. Run your program now. Click around the screen and see what
kind of values get printed in your console.

So the only thing left to do is compare *myCircleRadius* to *distance*,
and we can do this using a simple if statement.

    void testApp::mousePressed(int x, int y, int button){
        float distance = ofDist(myCircleX, myCircleY, x, y);
        if(distance < myCircleRadius)
        {
            myCircleRadius++;
        }
    }

This code says "first calculate the distance btween the center of the
circle and the mouse click. Then compare *distance* to *myCircleRadius*.
If (and only if) distance is LESS THAN myCircleRadius, increment
myCircleRadius by 1."

Et voila! You are interacting with graphics!

7. Technical Topics {#_technical_topics}
-------------------

In the example above, we looked at one of the most basic control
structures: the [if
statement](http://www.cprogramming.com/tutorial/lesson2.html). Control
structures like the if statement allow you to alter the flow of your
program based on criteria that you define. Control structures are not an
openFrameworks "thing", but rather a feature of the c++ language. Let’s
take a moment to review a few basics of the c++ language.

### 7.1. Variables {#_variables}

In the "Adding Movement" section, we introduced the idea of using
variables to represent values that change over the course of your
program. We used 2 integers, or \*int\*s - *int myCircleX* and *int
myCircleY* - to represent the location of a circle. When you declare a
variable as an *int*, you are telling the computer "I only intend to put
whole numbers into this variable." This made sense in our example
because we were moving a circle by a single pixel, so we didn’t need to
worry about fractions.

But there will be times when you do need to have a variable that can
hold a fraction, or something completely different, such as letters,
words, even a location in memory. There are variable types for each of
these situations. Here is a short list of some of them from
[cplusplus.com](http://www.cplusplus.com/doc/tutorial/variables/)

![Variable Types](images/variable-types.png)

So, as you can see, our basic integer takes up 4 bytes in memory. This
is a finite amount of memory, and therefore there is limited (but pretty
huge!) range of values that it can hold: namely, -2,147,483,648 to
2,147,483,647. If you need to store higher (or lower) numbers, you’d
have to use a *long int*, which (contrary to the diagram) can go up to
9,223,372,036,854,775,807 and down to -9,223,372,036,854,775,808.

It may be unintuitive to make such distinctions when dealing with
variables. A number is a number, right? Why differentiate between a
decimal number and a whole number? The reason has to do with how values
are stored in your computer’s memory. Ultimately, by giving the
programmer the responsibility of declaring what range and precision
their variables need, the program can run that much more efficiently.

+--------------------------+--------------------------+--------------------------+
| ![Tip](./images/icons/ti |
| p.png)                   |
| Compile and run this     |
| program to see           |
| information about how    |
| your computer treats     |
| different kinds of       |
| variables.               |
|                          |
|     #include <iostream>  |
|     #include <limits.h>  |
|     #include <float.h>   |
|     using namespace std; |
|                          |
|     int main ()          |
|     {                    |
|         cout << "type \t |
| \tsize \tmin \t\t\tmax"  |
| << endl;                 |
|         cout << "------- |
| ------------------------ |
| ------------------------ |
| --------" << endl;       |
|         cout << "bool\t\ |
| t" << sizeof(bool) << en |
| dl;                      |
|         cout << "char\t\ |
| t" << sizeof(char) << "\ |
| t" << CHAR_MIN << "\t\t\ |
| t" << CHAR_MAX << endl;  |
|         cout << "unsigne |
| d char\t" << sizeof(unsi |
| gned char) << "\t\t\t\t" |
|  << UCHAR_MAX << endl;   |
|         cout << "short\t |
| \t" << sizeof(short) <<  |
| "\t" << INT_MIN << "\t\t |
| " << INT_MAX << endl;    |
|         cout << "int\t\t |
| " << sizeof(int) << "\t" |
|  << INT_MIN << "\t\t" << |
|  INT_MAX << endl;        |
|         cout << "unsigne |
| d int\t" << sizeof(unsig |
| ned int) << "\t\t\t\t" < |
| < UINT_MAX << endl;      |
|         cout << "float\t |
| \t" << sizeof(float) <<  |
| "\t" << FLT_MIN << "\t\t |
| " << FLT_MAX << endl;    |
|         cout << "long\t\ |
| t" << sizeof(long) << "\ |
| t" << LONG_MIN << "\t" < |
| < LONG_MAX << endl;      |
|         cout << "double\ |
| t\t" << sizeof(double) < |
| < "\t" << DBL_MIN << "\t |
| \t" << DBL_MAX << endl;  |
|         return 0;        |
|     }                    |
+--------------------------+--------------------------+--------------------------+

There is one important kind of variable that is not covered in this
chart: *string*. A string can hold a sequence of characters. … more to
come …

### 7.2. Loops {#_loops}

Loops are perhaps one of the most important things to be comfortable
with as a programmer. They are, arguably, the main advantage of using a
computer: doing something over and over again very rapidly is the
definition of what a computer is good at. There are a few different
kinds of loops, and it is important to be familiar with all of them.

Suppose you want to a circle every 20 pixels across your window. One
option would be to copy and paste ofCircle commands like this:

    void testApp::draw(){
        ofCircle(20, 300, 10);
        ofCircle(40, 300, 10);
        ofCircle(60, 300, 10);
        ofCircle(80, 300, 10);
        ofCircle(100, 300, 10);
        ofCircle(120, 300, 10);
        // repeat
        ofCircle(1020, 300, 10);
    }

That would be over 50 lines of code - ugh. And what if you decided you
wanted them every 30 pixels instead of every 20 pixels? You’d have to go
back and edit each line of code. And what if the size of your window
changed? This is clearly unacceptable. Consider this code:

    void testApp::draw(){
        int x = 10;

        ofCircle(x, 300, 10);
        x += 20;
        ofCircle(x, 300, 10);
        x += 20;
        ofCircle(x, 300, 10);
        x += 20;
        ofCircle(x, 300, 10);
        x += 20;
        // copy and paste 47 more times
    }

In some ways, this is even worse. We’ve turned one line of code per
circle into 2 lines of code per circle. However, there is one very
important difference: in this case, the 2 lines are identical every
time. We have "abstracted" the task — that is, we have taken out the
specifics and made it into a more general form.

So now, all that’s left to do is to tell the computer to do those 2
lines of code a bunch of times instead of us pasting it in ourselves.
This is where loops come in.

#### 7.2.1. do…while loop {#_do_8230_while_loop}

All loops basically take the same form:

1.  Set up some initial values (initialization)

2.  Execute the body of the loop

3.  Decide whether to go back to step 2 or exit the loop

The simplest loop is the do/while loop. As the name suggests, this loop
allows you to ask the computer to "do" something "while" a condition is
met. Using a do/while loop, we can easily draw 51 circles

    void testApp::draw(){
        int i = 0;
        int x = 20;
        do {
            ofCircle(x, 300, 10);
            x+=20;
            i++;
        } while( i < 51 );
    }

So what just happened? Let’s go through the code step by step as if we
were the computer. I apologize that this is the most tedious thing you
will ever read, but hopefully it will illustrate what is going on in the
loop.

1.  Initialize a variable called i and set it equal to 0

2.  Initialize a variable called x and set it equal to 20

3.  Draw a circle at (20, 30) with a radius of 10

4.  Increment x by 20 (it now equals 40)

5.  Increment i by 1 (it now equals 1)

6.  Is 1 less than 51?

    1.  Yes! Go back to the beginning of the loop

7.  Draw a circle at (40, 30) with a radius of 10

8.  Increment x by 20 (it now equals 60)

9.  Increment i by 1 (it now equals 2)

10. Is 2 less than 51?

    1.  Yes! Go back to the beginning of the loop

11. Draw a circle at (60, 30) with a radius of 10

12. Increment x by 20 (it now equals 80)

13. Increment i by 1 (it now equals 3)

14. Is 3 less than 51?

    1.  Yes! Go back to the beginning of the loop

15. [REPEAT 46 TIMES UNTIL i=50 and x=1000]

16. Draw a circle at (1000, 30) with a radius of 10

17. Increment x by 20 (it now equals 1020)

18. Increment i by 1 (it now equals 51)

19. Is 51 less than 51?

    1.  NO! Exit out of loop and continue on to whatever comes next

+--------------------+--------------------+--------------------+--------------------+
| ![Tip](./images/ic |
| ons/tip.png)       |
| We could actually  |
| make this even a   |
| bit more efficient |
| and make the *x*   |
| variable to double |
| duty like this:    |
|                    |
|     int x = 20;    |
|     do {           |
|         ofCircle(x |
| , 300, 10);        |
|         x+=20;     |
|     } while(x < of |
| GetWidth());       |
|                    |
| This has the added |
| advantage of being |
| immune to changes  |
| in window size.    |
| Try making the     |
| window bigger and  |
| smaller — the      |
| circles will       |
| always be drawn to |
| the end of the     |
| window.            |
+--------------------+--------------------+--------------------+--------------------+

#### 7.2.2. while loop {#_while_loop}

In a while loop, the *while* part is simply moved up to the top of the
loop. So if we want to draw a string of circles with a while loop, it
would look like this:

    int i = 0;
    int x = 20;
    while(i < 51)
    {
        ofCircle(x, 300, 10);
        x+=20;
        i++;
    }

The only difference between a do…while loop and a while loop is that the
the condition happens first, before the loop body runs. For example,
suppose we edited our do…while loop like this:

    int x = 10;
    do {
        ofCircle(x, 300, 10);
        x += 20;
    } while( x < mouseX );

Notice how we’ve changed the condition so that the circles will be drawn
until *x* is less than the x position of the mouse. Run this code and
see what happens. Notice, in particular, that there is always 1 circle
on the screen regardless of how far to the left the mouse goes. Now
transform that into a while loop:

    int x = 10;
    while( x < mouseX )
    {
        ofCircle(x, 300, 10);
        x += 20;
    }

Now, if you move your mouse beyond the left side of the window, nothing
at all is drawn. This is because before the body of the loop is executed
(namely the ofCircle draw command), the test is done. So if mouseX is
less than x, no circles are drawn at all.

#### 7.2.3. for loop {#_for_loop}

We’ve saved the best for last. The for loop is probably the one that you
will use the most. This might be because it combines all 3 parts of a
loop (initialization, condition, and incrementing) into one compact
syntax. Let’s draw the same circles using a for loop:

    int x = 20;
    for(int i=0; i<51; i++)
    {
        ofCircle(x, 300, 10);
        x+=20;
    }

The syntax of the for loop can be a little daunting at first, but let’s
take it apart piece by piece. The first part is initialization: "int
i=0;" Pretty straightforward: we now have an integer called i that we
have set to 0. The next part is the condition: "i\<51". In other words,
we want the loop to continue so long as i is less than 51. And lastly,
the increment: "i++". After every iteration of the loop, we will
increment i by 1.

We saw each of these things in the other kind of loops. THe only
difference here is that they are all smushed into one line.

### 7.3. Arrays {#_arrays}

Another strength of computers is that they are encyclopedic: that is,
they can keep track of a huge number of things at a time. Suppose we
want to draw six thousand moving particles? We know from the loop
section that it is trivial to do something over and over again, but so
far, we have only used loops to achieve a relatively consistent pattern.
If we want do draw tons of particles, each with their own position,
things get a little more complicated.

![Arrays!](images/Arrays01.png)

Figure 1. 50000 particles!

    float circle1x;
    float circle1y;
    float circle1r;
    float circle2x;
    float circle2y;
    float circle2r;
    float circle3x;
    float circle3y;
    float circle3r;

    void testApp::setup(){
        ofSetFrameRate(24);

        circle1x = ofRandom(0, ofGetWidth());
        circle1y = ofRandom(0, ofGetHeight());
        circle1r = ofRandom(10, 40);

        circle2x = ofRandom(0, ofGetWidth());
        circle2y = ofRandom(0, ofGetHeight());
        circle2r = ofRandom(10, 40);

        circle3x = ofRandom(0, ofGetWidth());
        circle3y = ofRandom(0, ofGetHeight());
        circle3r = ofRandom(10, 40);

    }

    void testApp::update(){
        circle1x += ofRandom(-1,1);
        circle1y += ofRandom(-1,1);

        circle2x += ofRandom(-1,1);
        circle2y += ofRandom(-1,1);

        circle3x += ofRandom(-1,1);
        circle3y += ofRandom(-1,1);
    }

    void testApp::draw(){
        ofCircle(circle1x, circle1y, circle1r);

        ofCircle(circle2x, circle2y, circle2r);

        ofCircle(circle3x, circle3y, circle3r);
    }

  ------------------------------------ ------------------------------------
  ![Tip](./images/icons/tip.png)
  Notice the use of ofRandom(). This
  function will return a random
  number. It takes 2 arguments: the
  minimum possible value and the
  maximum possible value. What I am
  saying in this code is "give me a
  number between 0 and the width of
  the screen."
  ------------------------------------ ------------------------------------

Technically this works, but we have only drawn 3 circles, and already
the code is getting unwieldy. We want to draw 1000! We clearly have a
bunch of variables that are used in very similar ways. Why not group,
say, all of the x coordinates into a single set, and all of the y
coordinates, etc.?

These sets are called arrays. Check out the following code:

    float circleX[3];
    float circleY[3];
    float circleRad[3];

    void testApp::setup(){
        ofSetFrameRate(24);

        circleX[0] = ofRandom(0, ofGetWidth());
        circleY[0] = ofRandom(0, ofGetHeight());
        circleRad[0] = ofRandom(10, 40);

        circleX[1] = ofRandom(0, ofGetWidth());
        circleY[1] = ofRandom(0, ofGetHeight());
        circleRad[1] = ofRandom(10, 40);

        circleX[2] = ofRandom(0, ofGetWidth());
        circleY[2] = ofRandom(0, ofGetHeight());
        circleRad[2] = ofRandom(10, 40);
    }

    void testApp::update(){

        circleX[0] += ofRandom(-1,1);
        circleY[0] += ofRandom(-1,1);

        circleX[1] += ofRandom(-1,1);
        circleY[1] += ofRandom(-1,1);

        circleX[2] += ofRandom(-1,1);
        circleY[2] += ofRandom(-1,1);
    }

    void testApp::draw(){

        ofCircle(circleX[0], circleY[0], circleRad[0]);
        ofCircle(circleX[1], circleY[1], circleRad[1]);
        ofCircle(circleX[2], circleY[2], circleRad[2]);
    }

As you can see, we’ve replaced int circle1x, int circle2x, and int
circle3x with simply int circleX[3]. Now circleX is an "array" that can
hold up to 3 integers, rather than just 1. Read a little further, and
you will see that, in order to assign a value to one of the ints in the
array, you use the square brackets, like this: circleX[0] = 50;

Down in the draw function, you can see that we use the same syntax to
use the values that we have previously assigned to a particular slot in
the array.

But this is still kind of a mess. One sign that you might not be
utilizing loops as much as possible is if you see patterns in your
code — that is, similar sequences of code over and over again. So let’s
try to clean this up even more using some *for* loops.

    float circleX[3];
    float circleY[3];
    float circleRad[3];

    void testApp::setup(){
        ofSetFrameRate(24);

        for(int i=0; i<3; i++)
        {
            circleX[i] = ofRandom(0, ofGetWidth());
            circleY[i] = ofRandom(0, ofGetHeight());
            circleRad[i] = ofRandom(10, 40);
        }
    }

    void testApp::update(){

        for(int i=0; i<3; i++)
        {
            circleX[i] += ofRandom(-1,1);
            circleY[i] += ofRandom(-1,1);
        }
    }

    void testApp::draw(){

        for(int i=0; i<3; i++)
        {
            ofCircle(circleX[i], circleY[i], circleRad[i]);
        }
    }

Now, instead of putting hard-coded numbers between the square brackets,
we use the *i* variable of our for loop.

#### 7.3.1. \#define {#_define}

A wise person once said: the primary virtue of a programer is laziness.
Suppose you wanted to change the number of circles that appear on the
screen from 3 to 500. Obviously, the first step would be to change
circleX[3] to circleX[500], and likewise circleY and circleRad. Oh, but
that’s not all. You’d still have to go through every "for" loop and
change i\<3 to i\<50. That’s a lot of work!

It would be great if we could use a variable to keep track of how many
items we have in our array! It might look something like this:

    int num = 500;
    float circleX[num];
    float circleY[num];
    float circleRad[num];

Unfortunately, this isn’t possible. You can’t use a variable to declare
a variable.

Instead, we will use a new thing called a \#define (pronounced: "pound
define"). Take a look at this:

    #define NUM_CIRCLES 500

    float circleX[NUM_CIRCLES];
    float circleY[NUM_CIRCLES];
    float circleRad[NUM_CIRCLES];
    int circleR[NUM_CIRCLES];
    int circleG[NUM_CIRCLES];
    int circleB[NUM_CIRCLES];

    void testApp::setup(){
        ofSetFrameRate(24);

        for(int i=0; i<NUM_CIRCLES; i++)
        {
            circleX[i] = ofRandom(0, ofGetWidth());
            circleY[i] = ofRandom(0, ofGetHeight());
            circleRad[i] = ofRandom(10, 40);

            circleR[i] = ofRandom(0, 255);
            circleG[i] = ofRandom(0, 255);
            circleB[i] = ofRandom(0, 255);
        }
    }

    void testApp::update(){

        for(int i=0; i<NUM_CIRCLES; i++)
        {
            circleX[i] += ofRandom(-1,1);
            circleY[i] += ofRandom(-1,1);
        }
    }

    void testApp::draw(){

        for(int i=0; i<NUM_CIRCLES; i++)
        {
            ofSetColor(circleR[i], circleG[i], circleB[i]);
            ofCircle(circleX[i], circleY[i], circleRad[i]);
        }
    }

At the very top, notice the line "\#define NUM\_CIRCLES 500". This isn’t
technically a line of c++ code, but rather a message to your compiler.
It tells the compiler "before you start compiling code, anywhere you see
NUM\_CIRCLES, replace it with 500". That’s it! A \#define is one of a
couple messages that you can send to the compiler (or, more accurately,
the preprocessor), known more broadly as [preprocessor
directives](http://www.cplusplus.com/doc/tutorial/preprocessor/). We
will talk more about them at a later date., but for now, all you need to
know is that \#define is a very simple find/replace procedure.

### 7.4. Functions {#_functions}

    void drawStar(float xpos, float ypos, float radius, int npts)
    {
        bool useInner=false;
        ofBeginShape();
        for(int i=0; i<360; i+=360/npts)
        {
            int r = useInner ? radius*.6 : radius;
            int x = xpos + cos( ofDegToRad(i) ) * r;
            int y = ypos + sin( ofDegToRad(i) ) * r;
            ofVertex(x, y);
            useInner = !useInner;
        }
        ofEndShape();
    }

* * * * *

Version 0.1\
 Last updated 2014-06-02 07:58:42 JST
