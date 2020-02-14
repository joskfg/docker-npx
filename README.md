# Docker npx executable

This docker image provides a dockerised version of `npx`. You can pull this
[docker npx](https://hub.docker.com/r/pjlangley/npx) image from Docker Hub.

## Usage

### Fire and forget

If saving any output from `npx` isn't required, 
then you can simply run something like the following:

```
$ docker run --rm -it pjlangley/npx cowsay Hello, World!
npx: installed 10 in 2.424s
 _______________
< Hello, World! >
 ---------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

### Saving output

If you depend on `npx` saving output to disk, ensure to mount your desired
directory. For example, you may have the following, empty, directory:

```
$ tree .
.

0 directories, 0 files
```

Use `npx` to run `mkdirp` in order to create some directories:

```
$ docker run --rm -v `pwd`/.:/app -it pjlangley/npx mkdirp hello/world
npx: installed 1 in 1.311s
test $ tree
.
└── hello
    └── world

2 directories, 0 files
```

## Software

The upkeep intention is that `npx` will run on the latest node.js LTS version,
and on the latest stable Linux Alpine version.

## License

MIT.
