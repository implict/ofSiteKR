---
date: 2012/02/23 10:00:00
title: Vector Maths
summary: Basic concept of vector maths
author: Keith Pasko
---

Moving through space requires knowledge of where things are and where they are going. Vector Maths is the class of mathematics that gives us understanding control over these things in space, allowing for elegant, intuitive, and general descriptions of complex structures and movement. Vectors are at the heart of animation, particle systems, and 3d graphics; in fact, vector maths/linear algebra have made much of modern computer science possible.
공간속에서의 움직임은 그것들이 어디에 있는지, 그리고 어디로 가는지 알아야할 필요가 있습니다. 벡터 수학은 공간속에서의 물체를 컨트롤하는것에 대한 이해를 명확하게 제공하고, 복잡한 구조들에 대한 이해와 움직임을 제공합니다. 벡터는 애니메이션, 파티클 시스템, 3D 그래픽의 핵심입니다. 사실 백터 수학/선형 대수학은 거의 현대 컴퓨터 과학에서 만들어졌습니다.

Let's jump into some technical details; Shhhhh, hush now, it will all be over soon enough. A vector represents a direction and magnitude in an abstract "space"; for our current purposes, we can just think of this "space" as the common 2d or 3d world. In these worlds, we have standard "basis vectors" and an origin; everything else in the world is created from these fundamentals. For 3d, the standard origin is (0,0,0), and standard bases [1,0,0] , [0,1,0] , [0,0,1] (it is the same for 2d, but without the 3rd component, i.e. [0,0] origin, [1,0] , [0,1] bases). To put a perhaps more familiar name to these, we can call them the x, y, and z directions. The allowed operations on these vectors are addition and scalar multiplication - with these, we can generate any vector in space.

자 이제 기술적인 디테일로 넘어가봅시다. 휴. 숨한번 돌리구요. it will all be over soon enough. 벡터는 공간이라는 추상적인 개념에서 방향과 크기를 의미합니다. 현재 우리의 목적에서 보면, 공간은 보통 2d나 3d 세계를 말합니다. 다른말로 하면, "기저벡터"와 "기준"을 가지고 있다고 할 수 있습니다. 이 세계에서의 모든것은 필수적으로 갖고 있는 요소들입니다. 자 예를들어 3d라 하면, 기준은 (0, 0, 0)이고, 기저벡터들은 [1,0,0], [0,1,0], [0,0,1]입니다. (이는 2d도 마찬가지입니다. 단지 세번째 요소가 없을뿐이지요. [0,0]이 기준이고, [1,0], [0,1]의 기저백터들을 갖습니다.) 이러한 것들은 더 친숙하게 불리게 되는데, 그것이 바로 x, y, z방향입니다. 이런 벡터들에 허용된 연산자들은 덧셈과 스칼라 곱입니다. 이것과 함께라면, 우리는 어떠한 벡터든 공간내에서 생성할 수 있습니다.


##백터 연산

###스칼라 곱
Let's say we want to go 3.14 units "to the right" ("along x", "along the first basis"). We multiply by component, so the result is [1 * 3.14, 0 * 3.14, 0 * 3.14] = [3.14, 0, 0]. Similarly, if we want to go "up" ("along y", "along the second basis") by 1.71, we have [0,1,0] * 1.71 = [1 * 1.71,0 * 1.71,0 * 1.71] = [0,1.71,0]. We can see that multiplying by a scalar, fittingly, scales the vector, keeping the direction the same (or reversing it, if the scalar is negative).
자, "우측방향"으로 3.14만큼 가자 라고 해봅시다.("x를 따라", "첫번째 요소를 따라"). 우리는 각 요소에 곱을 합니다. 따라서 결과는 [1\*3.14, 0\*3.14, 0\*3.14] = [3.14, 0, 0]이 됩니다. 비슷하게, 만약 우리가 "위로"("y방향으로", "두번째 요소 방향대로") 1.71만큼 간다라고 한다면, [0, 1, 0] * 1.71 = [1 * 1.71,0 * 1.71,0 * 1.71] = [0, 1.71, 0]이 될것입니다. 이처럼 스칼라 곱이란, 백터의 크기를 변화하기 위해, 같은 방향으로(만약 스칼라 값이 음수라면, 반대방향이 됩니다) 스칼라 만큼 곱한다는 사실을 알 수 있습니다. 

<script src="../../js/vectors.js" type = "text/javascript">
</script>

<script src = "../../js/math_tut/diagrams.js" type = "text/javascript">
</script>

<canvas id = "mult" width = "600" height = "250"> </canvas>

<script type="text/javascript">
drawMult();
</script>

OF에서는, * 연산자나 scale/getScaled함수를 이용해 스칼라 곱을 할 수 있습니다.

~~~~{.cpp}
ofVec3f v(1,2,3);
return v*3.14; // returns ofVec3f(3.14,6.28,9.42);
return v.getScaled(3.14); // also returns ofVec3f(3.14,6.28,9.42);
v.scale(3.14); // internally scales v to ofVec3f(3.14,6.28,9.42);
//works with vec2f and vec4f as well
ofVec2f v(0,1); return v*2.718; // returns ofVec3f(0,2.718,0);
ofVec4f v(0,1,4,3); return v*2.718; // returns ofVec4f(0,2.718,10.872,8.154);

//note- there is also a * operator which is NOT scalar multiplication-
// 주의 : * 연산자가 꼭 스칼라 곱을 의미하는것만은 아닙니다.
ofVec3f v1(1,2,3); ofVec3f v2(2,3,4);
return v1*v2; // 리던값은 ofVec3f(2,6,12) 가 됩니다;
// this is component-wise multiplication between two vectors, and is far less common than scalar multiplication
// 이것은 두백터의 행렬곱을 수행하는 예제이며, 이 챕터에서 설명하는 것과는 완전히 다른 것입니다.
~~~~

이와 관련된 OF 예제는 <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#scale">여기</a>에서 확인하실 수 있습니다.

###덧셈
Now let's say we want to go 3.14 units to the right, and then 1.71 units up; we can add the two vectors we've just created- [3.14,0,0] + [0,1.71,0] = [3.14 + 0,0 + 1.71,0 + 0] = [3.14,1.71,0]. This is called "component-wise addition", as we just add the different components of each vector (i.e. x + x, y + y, z + z). This can be visualized by putting one vector at the tip of the other vector

자 이제, 우측으로 3.14만큼 간 뒤, 위로 1.71만큼 가자 라고 해봅시다. 우리는 우리가 방금 생성한 두 벡터들을 더할 수 있습니다. [3.14, 0, 0] + [0, 1.71, 0] = [3.14 + 0, 0+1.71, 0+ 0]. 이것은 "대응원소덧셈"이라 불리우는데, 각 벡터의 다른 요소들끼리 더하는것을 말합니다(x+x, y+y, z+z). 이것을 시각화해보면, 백터의 시작점을 다른 벡터의 끝에 놓는다 생각해볼 수 있습니다.

<canvas id = "add" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawAdd();
</script>
<br/>

~~~~{.cpp}
ofVec3f v1(3.14,0,0);
ofVec3f v2(0,1.71,0);
return v1+v2; // returns ofVec3f(3.14,1.71,0);
~~~~

이와 관련된 OF 예제는 <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#operator+">여기</a>에서 확인하실 수 있습니다.

###응용
Who cares? How is this useful? Let's take a simple example - we have two points a and b in space, and we want to move from one to the other. Remember that addition is like putting a vector at the tip of another vector? Well, we know that if we add the direction from a to b (we'll call it c) to a, we'll get b: a + c = b. The vector we're looking for is c = b - a.
흠.. 이게 어디에 쓰인가고요? 간단한 예를 한번 들어봅시다. a와 b 두개의 점이 공간에 있다고 가정하고, 한 점이 다른 점으로 이동한다 생각해봅시다. 아까 한 벡터의 시작점을 다른 벡터의 끝에 둔다고 생각한것 기억나시나요? 자, 만약 벡터 a에 어떤 벡터를 더해야 벡터 b가 될까 라고 생각해봄다면(어떤 벡터를 c라고 해봅시다) a + c = b 라고 할 수 있습니다. 따라서 우리가 구할 벡터 c = b - a가 됩니다.

<canvas id = "diff" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawDiff();
</script>
<br/>
Great, now we know the direction from a to b (c = b - a). Again, this means that if we add c to the tip of a, we'll end up at b. If we multiply c by various numbers between 0 and 1, we can progressively move from a to b.
훌륭합니다, 이제 우리는 a에서 b의 방향(c = b - a)을 계산할 수 있습니다. 다시한번 말씀드리만, 저 수식의 뜻은 만약 우리가 a의 끝에 c를 더하면 그 끝이 b가 된다는 것을 의미합니다. 만약 c에 0과 1사이의 값을 증가시키며 곱하면, a에서 b로 점차적으로 이동을 시킬 수가 있습니다.

<canvas id = "aim" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawAim();
</script>

Pip pip, now we can shoot particles from one position to another with ease using our new vector maths. All of these operations and concepts work exactly the same way in 3d; to go from one point to another in 3d, we once again do a + delta*(b - a) - nothing else needed!
삐약삐약, 자 이제 벡터수학을 이용하여 한 지점에서 다른방향으로 쉽게 파티클을 날려볼 수 있겠군요. 이런 연산자와 개념들은 3d에서도 똑같이 동작합니다. a + delta\*(b-a) 이렇게요! - 더이상 뭐가 필요할까요!


##Other helpful operations

###length/normalization
The length of a vector is the square root of the sum of the squares of the components. Huh? In perhaps less obscure terms, length(x,y,...) = sqrt( x*x + y*y + ...); e.g the length of a vector (3,4) = sqrt(3*3 + 4*4) = sqrt(25) = 5. Remember our "aim" example, going from a to b? Well, now we know how far apart in space a and b are - the length of c (b - a), information crucial for simulations, among many other graphics applications. The length of a vector is often denoted by |v| or ||v||; if you see this on the wikipediaz somewhere, now you know what it means.

Normalization is the concept of dividing a vector by its length, turning it into a "unit vector", or vector pointed in the same direction, but with a length of 1; this makes sure that the length of the vector doesn't "contaminate" any operations on it. Imagine if our basis vector from the first example wasn't normalized- say (1,0,0) was (25504.77707,0,0), then 3.14*basis1 = (80085,0,0), which is a bit counterintuitive (its more natural to think that the vector (3.14,0,0) actually goes 3.14 units in the x-direction, not 80085 units). Now when we see v / |v| , we know it is the normalized vector in the v direction; holla.

~~~~{.cpp}
ofVec3f v1(3.14,9.11,1.234);
return v1.length(); //returns sqrt(3.14*3.14 + 9.11*9.11 + 1.234*1.234) = 9.71465
v1.normalize(); return v1.length(); // returns 1.
~~~~

###dot product / projection / reflection
The dot product can be a confusing thing. In keeping with the somewhat anal-retentive nature of this tutorial, let's just start with a definition- the dot product of a and b [ lets call it dot(a,b) ] = |a|*|b|*cos(theta), where theta is the angle between the two vectors, and |a| and |b| are the lengths of a and b, as described in the last section. Great, but why is that useful? Well, first of all, it enables us to find the angle between any two vectors in any dimension (2d, 3d,...10d?); since dot(a,b) = |a|*|b|*cos(theta), theta, the angle between the vectors, is equal to acos(dot(a,b)/|a|*|b|) (a motivation for learning normalizing, as it quite simplifies this calculation...if a and b are unit vectors, this is just acos(dot(a,b)) ).

If you don't care exactly what the angle itself between them is and just care about the cosine (and again assume a and b are normalized) then dot(a,b) = cos(theta), quite tidy. Why would we care about the cosine only? Recall that the cosine is positive when theta is between pi/2 (90 deg) and -pi/2 (-90 deg), so the dot product is the measure of how much the vectors are pointing "in the same direction" to a certain extent. If threshold <= dot(a,b) <= 1., this means that the vectors are pointing in roughly the same direction, within the threshold. If dot(a,b) is negative, they are in different directions (more than 90 deg apart); in the extreme (-1), they are facing exactly opposite. As a concrete example, diffuse lighting uses the dot product to determine illumination of a face, as it is related to how much the face direction (normal) and direction from face to light are aligned.

<canvas id = "dot" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawDot();
</script>

As you can see from the diagram, we can use the dot product to compute the projection of one vector onto the other; it is just |b|*dot(a,|b|). We can also find the smallest distance from a vector a to a vector b, since it is e in the diagram, the perpendicular projection. We can even compute the reflection of a vector across another, since it is d - e ( = 2*d - a, or 2*|b|*dot(a,|b|) - a). The beauty of this forulation is that this abstracts to multiple dimensions- if you want to find the projection of a vector on a plane, you project onto the first basis, project onto the second basis, and add. All this comes from just the innocent looking dot product.

In OF, our very handy dot product is just the method "dot" -
~~~~{.cpp}
ofVec3f v1(1,2,3);
ofVec3f v2(4,5,6);
return v1.dot(v2); // returns 1*4 + 2*5 + 3*6 = 32;
~~~~


OF reference can be found <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#dot">here</a>

##hardcore nerding action for the math-minded
For the hardcore, our "space" is a vector space, which must be "closed under addition and scalar multiplication," which is the fancy way of saying that all combinations of addition and scalar multiplication are also vectors in that same space. The standard bases are usually referred to by "e", ie e1, e2, e3, etc; we also note that we are most often discussing an orthonormal basis, which means that e1, e2, and e3 all have length 1, and are each at 90 degrees to one another. In the difference example, if we assume a and b are along a path, then c is one approximation of the path tangent.  ** Before  the uber-nerds out there slap my hand for being incomplete, there are a few other technical requirements to be a vector space; these can be found here http://en.wikipedia.org/wiki/Vector_space. The dot product is also called the inner product, and with length and this innner product defined, we get an "inner product space". In linear algebra terms, this inner product is described by transposing the object and multiplying; e.g. dot(a,b) = a(transpose) * b; the square length of a vector is often written as v(transpose) * v. Projection onto a subspace represented by a matrix is similar, A(transpose) * A * x (where A could represent the basis vectors of a plane, for example).
