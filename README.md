<div align="center">
    <h3 align="center">MaidCard Noir</h3>
    <a href="https://github.com/reshsix/noir">
        <img src="logo.png" width="96" height="96">
    </a>
</div>

## ☕ About
Version: **1.0 alpha**

## 🎬 Getting Started

### Prerequisites
- A C99 compiler

### Build
Files are created in `build`
```sh
make
```

### Installation
Files are installed in `/usr/local`
```sh
sudo make install
```

### Usage
A command-line tool `noir` is available
```sh
echo test | noir write image.png image2.png
noir read image2.png
```
