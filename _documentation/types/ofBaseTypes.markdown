#class ofBaseTypes


##Description






##Methods



###  ~ofBaseRenderer()

_syntax: ~ofBaseRenderer()_

_name: ~ofBaseRenderer_

_returns:  _

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








###  string getType()

_syntax: getType()_

_name: getType_

_returns:   string_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








###  void update()

_syntax: update()_

_name: update_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








###  void draw(poly)

_syntax: draw(poly)_

_name: draw_

_returns:   void_

_returns_description: _

_parameters: ofPolyline & poly_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void draw(shape)

_syntax: draw(shape)_

_name: draw_

_returns:   void_

_returns_description: _

_parameters: ofPath & shape_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void draw(vertexData)

_syntax: draw(vertexData)_

_name: draw_

_returns:   void_

_returns_description: _

_parameters: ofMesh & vertexData_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void draw(vertexData, renderType)

_syntax: draw(vertexData, renderType)_

_name: draw_

_returns:   void_

_returns_description: _

_parameters: ofMesh & vertexData, ofPolyRenderMode renderType_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void draw(vertexData, drawMode)

_syntax: draw(vertexData, drawMode)_

_name: draw_

_returns:   void_

_returns_description: _

_parameters: vector&lt;ofPoint&gt; & vertexData, ofPrimitiveMode drawMode_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void draw(image, x, y, z, w, h)

_syntax: draw(image, x, y, z, w, h)_

_name: draw_

_returns:   void_

_returns_description: _

_parameters: ofImage & image, float x, float y, float z, float w, float h_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void draw(image, x, y, z, w, h)

_syntax: draw(image, x, y, z, w, h)_

_name: draw_

_returns:   void_

_returns_description: _

_parameters: ofFloatImage & image, float x, float y, float z, float w, float h_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void draw(image, x, y, z, w, h)

_syntax: draw(image, x, y, z, w, h)_

_name: draw_

_returns:   void_

_returns_description: _

_parameters: ofShortImage & image, float x, float y, float z, float w, float h_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


// transformations






###  void pushView()

_syntax: pushView()_

_name: pushView_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void popView()

_syntax: popView()_

_name: popView_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


// setup matrices and viewport (upto you to push and pop view before and after)
// if width or height are 0, assume windows dimensions (ofGetWidth(), ofGetHeight())
// if nearDist or farDist are 0 assume defaults (calculated based on width / height)






###  void viewport(viewport)

_syntax: viewport(viewport)_

_name: viewport_

_returns:   void_

_returns_description: _

_parameters: ofRectangle viewport_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void viewport(x =  0, y =  0, width =  0, height =  0, invertY =  true)

_syntax: viewport(x =  0, y =  0, width =  0, height =  0, invertY =  true)_

_name: viewport_

_returns:   void_

_returns_description: _

_parameters: float x = 0, float y = 0, float width = 0, float height = 0, bool invertY = true_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setupScreenPerspective(width =  0, height =  0, orientation = OF_ORIENTATION_UNKNOWN, vFlip =  true, fov =  60, nearDist =  0, farDist =  0)

_syntax: setupScreenPerspective(width =  0, height =  0, orientation = OF_ORIENTATION_UNKNOWN, vFlip =  true, fov =  60, nearDist =  0, farDist =  0)_

_name: setupScreenPerspective_

_returns:   void_

_returns_description: _

_parameters: float width = 0, float height = 0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip = true, float fov = 60, float nearDist = 0, float farDist = 0_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setupScreenOrtho(width =  0, height =  0, orientation = OF_ORIENTATION_UNKNOWN, vFlip =  true, nearDist =  -1, farDist =  1)

_syntax: setupScreenOrtho(width =  0, height =  0, orientation = OF_ORIENTATION_UNKNOWN, vFlip =  true, nearDist =  -1, farDist =  1)_

_name: setupScreenOrtho_

_returns:   void_

_returns_description: _

_parameters: float width = 0, float height = 0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip = true, float nearDist = -1, float farDist = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  ofRectangle getCurrentViewport(ofRectangle)

_syntax: getCurrentViewport(ofRectangle)_

_name: getCurrentViewport_

_returns:   ofRectangle_

_returns_description: _

_parameters: {return ofRectangle_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  int getViewportWidth(0)

_syntax: getViewportWidth(0)_

_name: getViewportWidth_

_returns:   int_

_returns_description: _

_parameters: {return 0_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  int getViewportHeight(0)

_syntax: getViewportHeight(0)_

_name: getViewportHeight_

_returns:   int_

_returns_description: _

_parameters: {return 0_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








###  void setCoordHandedness(handedness)

_syntax: setCoordHandedness(handedness)_

_name: setCoordHandedness_

_returns:   void_

_returns_description: _

_parameters: ofHandednessType handedness_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  ofHandednessType getCoordHandedness(OF_LEFT_HANDED)

_syntax: getCoordHandedness(OF_LEFT_HANDED)_

_name: getCoordHandedness_

_returns:   ofHandednessType_

_returns_description: _

_parameters: {return OF_LEFT_HANDED_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


//our openGL wrappers






###  void pushMatrix()

_syntax: pushMatrix()_

_name: pushMatrix_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void popMatrix()

_syntax: popMatrix()_

_name: popMatrix_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void translate(x, y, z =  0)

_syntax: translate(x, y, z =  0)_

_name: translate_

_returns:   void_

_returns_description: _

_parameters: float x, float y, float z = 0_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void translate(p)

_syntax: translate(p)_

_name: translate_

_returns:   void_

_returns_description: _

_parameters: const ofPoint & p_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void scale(xAmnt, yAmnt, zAmnt =  1)

_syntax: scale(xAmnt, yAmnt, zAmnt =  1)_

_name: scale_

_returns:   void_

_returns_description: _

_parameters: float xAmnt, float yAmnt, float zAmnt = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void rotate(degrees, vecX, vecY, vecZ)

_syntax: rotate(degrees, vecX, vecY, vecZ)_

_name: rotate_

_returns:   void_

_returns_description: _

_parameters: float degrees, float vecX, float vecY, float vecZ_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void rotateX(degrees)

_syntax: rotateX(degrees)_

_name: rotateX_

_returns:   void_

_returns_description: _

_parameters: float degrees_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void rotateY(degrees)

_syntax: rotateY(degrees)_

_name: rotateY_

_returns:   void_

_returns_description: _

_parameters: float degrees_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void rotateZ(degrees)

_syntax: rotateZ(degrees)_

_name: rotateZ_

_returns:   void_

_returns_description: _

_parameters: float degrees_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void rotate(degrees)

_syntax: rotate(degrees)_

_name: rotate_

_returns:   void_

_returns_description: _

_parameters: float degrees_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


// screen coordinate things / default gl values






###  void setupGraphicDefaults()

_syntax: setupGraphicDefaults()_

_name: setupGraphicDefaults_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setupScreen()

_syntax: setupScreen()_

_name: setupScreen_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


// drawing modes






###  void setRectMode(mode)

_syntax: setRectMode(mode)_

_name: setRectMode_

_returns:   void_

_returns_description: _

_parameters: ofRectMode mode_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  ofRectMode getRectMode()

_syntax: getRectMode()_

_name: getRectMode_

_returns:   ofRectMode_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setFillMode(fill)

_syntax: setFillMode(fill)_

_name: setFillMode_

_returns:   void_

_returns_description: _

_parameters: ofFillFlag fill_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  ofFillFlag getFillMode()

_syntax: getFillMode()_

_name: getFillMode_

_returns:   ofFillFlag_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setLineWidth(lineWidth)

_syntax: setLineWidth(lineWidth)_

_name: setLineWidth_

_returns:   void_

_returns_description: _

_parameters: float lineWidth_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setBlendMode(blendMode)

_syntax: setBlendMode(blendMode)_

_name: setBlendMode_

_returns:   void_

_returns_description: _

_parameters: ofBlendMode blendMode_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setLineSmoothing(smooth)

_syntax: setLineSmoothing(smooth)_

_name: setLineSmoothing_

_returns:   void_

_returns_description: _

_parameters: bool smooth_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setCircleResolution(res)

_syntax: setCircleResolution(res)_

_name: setCircleResolution_

_returns:   void_

_returns_description: _

_parameters: int res_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void enablePointSprites()

_syntax: enablePointSprites()_

_name: enablePointSprites_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void disablePointSprites()

_syntax: disablePointSprites()_

_name: disablePointSprites_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


// color options






###  void setColor(r, g, b)

_syntax: setColor(r, g, b)_

_name: setColor_

_returns:   void_

_returns_description: _

_parameters: int r, int g, int b_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setColor(r, g, b, a)

_syntax: setColor(r, g, b, a)_

_name: setColor_

_returns:   void_

_returns_description: _

_parameters: int r, int g, int b, int a_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setColor(color)

_syntax: setColor(color)_

_name: setColor_

_returns:   void_

_returns_description: _

_parameters: const ofColor & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setColor(color, _a)

_syntax: setColor(color, _a)_

_name: setColor_

_returns:   void_

_returns_description: _

_parameters: const ofColor & color, int _a_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setColor(gray)

_syntax: setColor(gray)_

_name: setColor_

_returns:   void_

_returns_description: _

_parameters: int gray_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void setHexColor(hexColor)

_syntax: setHexColor(hexColor)_

_name: setHexColor_

_returns:   void_

_returns_description: _

_parameters: int hexColor_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


// bg color






###  ofFloatColor & getBgColor()

_syntax: getBgColor()_

_name: getBgColor_

_returns:   ofFloatColor &_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  bool bClearBg(true)

_syntax: bClearBg(true)_

_name: bClearBg_

_returns:   bool_

_returns_description: _

_parameters: {return true_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void background(c)

_syntax: background(c)_

_name: background_

_returns:   void_

_returns_description: _

_parameters: const ofColor & c_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void background(brightness)

_syntax: background(brightness)_

_name: background_

_returns:   void_

_returns_description: _

_parameters: float brightness_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void background(hexColor, _a = 255.0f)

_syntax: background(hexColor, _a = 255.0f)_

_name: background_

_returns:   void_

_returns_description: _

_parameters: int hexColor, float _a=255.0f_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void background(r, g, b, a = 255)

_syntax: background(r, g, b, a = 255)_

_name: background_

_returns:   void_

_returns_description: _

_parameters: int r, int g, int b, int a=255_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








###  void setBackgroundAuto(bManual)

_syntax: setBackgroundAuto(bManual)_

_name: setBackgroundAuto_

_returns:   void_

_returns_description: _

_parameters: bool bManual_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








###  void clear(r, g, b, a = 0)

_syntax: clear(r, g, b, a = 0)_

_name: clear_

_returns:   void_

_returns_description: _

_parameters: float r, float g, float b, float a=0_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void clear(brightness, a = 0)

_syntax: clear(brightness, a = 0)_

_name: clear_

_returns:   void_

_returns_description: _

_parameters: float brightness, float a=0_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void clearAlpha()

_syntax: clearAlpha()_

_name: clearAlpha_

_returns:   void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


// drawing






###  void drawLine(x1, y1, z1, x2, y2, z2)

_syntax: drawLine(x1, y1, z1, x2, y2, z2)_

_name: drawLine_

_returns:   void_

_returns_description: _

_parameters: float x1, float y1, float z1, float x2, float y2, float z2_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void drawRectangle(x, y, z, w, h)

_syntax: drawRectangle(x, y, z, w, h)_

_name: drawRectangle_

_returns:   void_

_returns_description: _

_parameters: float x, float y, float z, float w, float h_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void drawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)

_syntax: drawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)_

_name: drawTriangle_

_returns:   void_

_returns_description: _

_parameters: float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void drawCircle(x, y, z, radius)

_syntax: drawCircle(x, y, z, radius)_

_name: drawCircle_

_returns:   void_

_returns_description: _

_parameters: float x, float y, float z, float radius_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void drawEllipse(x, y, z, width, height)

_syntax: drawEllipse(x, y, z, width, height)_

_name: drawEllipse_

_returns:   void_

_returns_description: _

_parameters: float x, float y, float z, float width, float height_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







###  void drawString(text, x, y, z, mode)

_syntax: drawString(text, x, y, z, mode)_

_name: drawString_

_returns:   void_

_returns_description: _

_parameters: string text, float x, float y, float z, ofDrawBitmapMode mode_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _



// returns true if the renderer can render curves without decomposing them






###  bool rendersPathPrimitives()

_syntax: rendersPathPrimitives()_

_name: rendersPathPrimitives_

_returns:   bool_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







##Variables



