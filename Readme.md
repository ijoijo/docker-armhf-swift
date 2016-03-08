<img src="https://swift.org/assets/images/swift.svg" alt="Swift logo" height="70" >

# armhf-swift

### An Ubuntu 14.04 Docker image for [Swift](https://swift.org) on ARM devices: Raspberry PIs, Beagle Blacks...

#### You can find the Docker Hub repo here: [https://hub.docker.com/r/ijoijo/armhf-swift/](https://hub.docker.com/r/ijoijo/armhf-swift/)


### Docker Instructions

##### Pull the Docker Image on your ARM device:

```bash
docker pull ijoijo/armhf-swift
```


##### Run Swift REPL within docker:

```bash
docker run -it ijoijo/armhf-swift

# Example: hello world
1> print("Hello world")

```


##### Run shell, for example to compile and run swift code:

```bash
docker run -it ijoijo/armhf-swift bash

# Example: hello world
echo 'print("Hello world")' > helloWorld.swift
swiftc helloWorld.swift
./helloWorld

```


## Contributions

Any suggestions and contributions are welcome and encouraged


## License

armhf-swift is licensed under the [MIT License.](LICENSE.md)
