# SimpleExercise

## Info

Build .swift files by command line

## Usage

Edit "build.sh" to config which file needs to build
### Generate executable file "result".
```shell
sh build.sh
```

### Run it
```shell
./result 
```

### Command Build
```shell
swiftc -o program *.swift
```

```shell
swiftc first.swift second.swift third.swift -o program
```

```
chmod +x main.swift
./main.swift
```

[Reference](https://jblevins.org/log/swift)

[Reference2](https://medium.com/quick-code/lets-build-a-command-line-app-in-swift-328ce274f1cc)