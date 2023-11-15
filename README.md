## Preknowledge
This code is an extension of Greiner–Hormann algorithm for polygon clipping.
It is the source code of [Clipping simple polygons with degenerate intersections](https://www.sciencedirect.com/science/article/pii/S259014861930007X). This repo is the mirror of author’s [webpage](https://www.inf.usi.ch/hormann/polyclip/).


## Build & Execute
```
./build.sh
```
The default is debug `-g` flag in CMakeLists.txt

To compute the intersection (or union) of two polygon, execute

```
polyclip [-union] ./examples/input1.poly ./examples/input2.poly output.poly
```

For more information please refer to the readme_src.txt file.