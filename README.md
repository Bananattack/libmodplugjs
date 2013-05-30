libmodplugjs
============

A really inefficient way to play .mod/.s3m/.it/.xm files on the web! Compiles libmodplug by using emscripten to generate a 1.78MB "binary" that can be tied into the HTML5 Web Audio API (at the time of this writing supported by Chrome, and FF nightly).

Known issues: For some reason songs abruptly end, or start in the middle, or don't play at all (.xm). Looping is also messed, so it's temporarily disabled (seek to start sort of worked, actually settting mLoopCount in an ModPlug_Settings struct gets ignored). These are probably caused by reliance on undefined behaviour in libmodplug, since the same exact version of this library works in a C++ project of mine without issues. It might have something to do with emscripten compilation settings, or... my audio reading code is messed?

All source code here is released under the public domain.