#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###void ofSoundStreamClose()

<!--
_syntax: ofSoundStreamClose()_
_name: ofSoundStreamClose_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Stops the sound stream and also cleans up the stream's resources. 







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundStreamListDevices()

<!--
_syntax: ofSoundStreamListDevices()_
_name: ofSoundStreamListDevices_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Prints a list of available devices to the console. 







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputs,nInputs,OFSA)

<!--
_syntax: ofSoundStreamSetup(nOutputs,nInputs,OFSA)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputs, int nInputs, ofSimpleApp * OFSA_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Sets up the audio, with nOutputs channels of audio out, nInputs channels of audio in. You also must pass in a pointer to the ofSimpleApp, so you can just use the word "this". For example, for 2 channel output, call in the setup function:
~~~~{.cpp}

ofSoundStreamSetup(2,0,this);
~~~~

In this simplified call, the bufferSize, sampleRate, and number of buffers (for latency) are all set to defaults.







<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputs,nInputs,OFSA,sampleRate,bufferSize,nBuffers)

<!--
_syntax: ofSoundStreamSetup(nOutputs,nInputs,OFSA,sampleRate,bufferSize,nBuffers)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputs, int nInputs, ofSimpleApp * OFSA, int sampleRate, int bufferSize, int nBuffers_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Sets up the audio, but allows you to control more precise details of the audio system.







<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr = NULL)

<!--
_syntax: ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr = NULL)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputChannels, int nInputChannels, ofBaseApp *appPtr=NULL_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets up and starts a global 

This will set up a sound stream with a default sample rate of 44100, a buffer size of 256 samples, and a queue of 4 buffers.







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputChannels, nInputChannels, sampleRate, bufferSize, nBuffers)

<!--
_syntax: ofSoundStreamSetup(nOutputChannels, nInputChannels, sampleRate, bufferSize, nBuffers)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputChannels, int nInputChannels, int sampleRate, int bufferSize, int nBuffers_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets up and starts a global 







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr, sampleRate, bufferSize, nBuffers)

<!--
_syntax: ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr, sampleRate, bufferSize, nBuffers)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputChannels, int nInputChannels, ofBaseApp *appPtr, int sampleRate, int bufferSize, int nBuffers_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets up and starts a global 







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundStreamStart()

<!--
_syntax: ofSoundStreamStart()_
_name: ofSoundStreamStart_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Starts the sound stream (audioIn() / audioOut() will start being called) 







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundStreamStop()

<!--
_syntax: ofSoundStreamStop()_
_name: ofSoundStreamStop_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Stops the sound stream (audioIn() / audioOut() will stop being called) 







_description: _








<!----------------------------------------------------------------------------->

