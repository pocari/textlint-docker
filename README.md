# textlint docker

## usage

### docker build
  ```
  docker build -t textlint .
  ```

### run docker
  ```
  # enter container
  docker run --rm -it -v $(pwd):/var/textlint textlint bash

  or

  # run sample
  docker run --rm -i -v $(pwd):/var/textlint textlint textlint --stdin < sample.txt
  ```

### run sample. (in container)
  ```
  # textlint sample.txt
  root@0d0298b388e4:/var/textlint# textlint sample.txt
  ```

