![logo](https://goo.gl/XlIcXz)
## raylib-go
[![TravisCI Build Status](https://travis-ci.org/gen2brain/raylib-go.svg?branch=master)](https://travis-ci.org/gen2brain/raylib-go)
[![AppVeyor Build status](https://ci.appveyor.com/api/projects/status/qv2iggrqtgl7xhr0?svg=true)](https://ci.appveyor.com/project/gen2brain/raylib-go)
[![GoDoc](https://godoc.org/github.com/hecate-tech/raylib-go/raylib?status.svg)](https://godoc.org/github.com/hecate-tech/raylib-go/raylib)
[![Go Report Card](https://goreportcard.com/badge/github.com/hecate-tech/raylib-go)](https://goreportcard.com/report/github.com/hecate-tech/raylib-go)
[![Examples](https://img.shields.io/badge/learn%20by-examples-0077b3.svg?style=flat-square)](https://github.com/hecate-tech/raylib-go/tree/master/examples)

Golang bindings for [raylib](http://www.raylib.com/), a simple and easy-to-use library to learn videogames programming.

![screenshot](https://goo.gl/q6DAoy)

### Why does this repo exist?

Why use this version of raylib instead of gen2brain/raylib-go?

Well there are many drawbacks to using this version. The main point of using this version though is if
you're using raylib for 3D game development.

If you're using gen2brain currently on v2.1. Models and textures don't work properly.

This repository is just a clone of the v2.0 version for the raylib-go repository since it's not versioned to Go standards.

### Requirements

##### Ubuntu

###### X11

    apt-get install libgl1-mesa-dev libxi-dev libxcursor-dev libxrandr-dev libxinerama-dev 

###### Wayland 

    apt-get install libgl1-mesa-dev libwayland-dev libxkbcommon-dev 

##### Fedora

###### X11

    dnf install mesa-libGL-devel libXi-devel libXcursor-devel libXrandr-devel libXinerama-devel

###### Wayland 

    dnf install mesa-libGL-devel wayland-devel libxkbcommon-devel

##### macOS

On macOS you need Xcode or Command Line Tools for Xcode.

##### Windows

On Windows you need C compiler, like [Mingw-w64](https://mingw-w64.org) or [TDM-GCC](http://tdm-gcc.tdragon.net/).
You can also build binary in [MSYS2](https://msys2.github.io/) shell.

##### Android

[Android example](https://github.com/hecate-tech/raylib-go/tree/master/examples/others/android/example).

##### Raspberry Pi

[RPi example](https://github.com/hecate-tech/raylib-go/tree/master/examples/others/rpi/basic_window).

### Installation

    go get -v -u github.com/hecate-tech/raylib-go/raylib

### Build tags

* `noaudio` - disables audio functions
* `opengl21` - uses OpenGL 2.1 backend (default is 3.3 on desktop)
* `opengl11` - uses OpenGL 1.1 backend (pseudo OpenGL 1.1 style)
* `wayland` - builds against Wayland libraries

### Documentation

Documentation on [GoDoc](https://godoc.org/github.com/hecate-tech/raylib-go/raylib). Also check raylib [cheatsheet](http://www.raylib.com/cheatsheet/cheatsheet.html).

### Example

```go
package main

import "github.com/hecate-tech/raylib-go/raylib"

func main() {
	rl.InitWindow(800, 450, "raylib [core] example - basic window")

	rl.SetTargetFPS(60)

	for !rl.WindowShouldClose() {
		rl.BeginDrawing()

		rl.ClearBackground(rl.RayWhite)

		rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LightGray)

		rl.EndDrawing()
	}

	rl.CloseWindow()
}
```

Check more [examples](https://github.com/hecate-tech/raylib-go/tree/master/examples) organized by raylib modules.


### License

raylib-go is licensed under an unmodified zlib/libpng license. View [LICENSE](https://github.com/hecate-tech/raylib-go/blob/master/LICENSE).
