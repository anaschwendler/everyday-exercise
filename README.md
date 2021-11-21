# Everyday Exercise

It all started with my solutions to https://exercism.io/.

But now the goal is to solve one exercise everyday, sometimes it might come from Exercism, sometimes from LeetCode, Hackerrank, or others that I just remmember.

One exercise a day keeps the mind on its way.

![](https://media.giphy.com/media/2RiU1RUjyh4C4/giphy.gif)

<small>(the gif above might picture how I see myself on the computer, might be fictional, might be real.)</small>

## Dockerfile config

In order to make it easier to run locally, I'm adding a Dockerfile.

### Build image

```
docker build -t everyday-exercise .
```

the `-t` command adds a name to the docker image.

### Run python linter

```
docker run --rm --volume ${PWD}:/app everyday-exercise \
    black --check ./python/
```

### Run python tests

```
docker run --rm --volume ${PWD}:/app everyday-exercise \
    pytest ./python/
```

### Run ruby linter

```
docker run --rm --volume ${PWD}:/app everyday-exercise \
    rubocop ./ruby
```

### Run ruby tests

```
docker run --rm --volume ${PWD}:/app everyday-exercise \
    sh -c "cd ruby; rake"
```

We use `--volume` in order to use the correct updated files in the image. This was made to be a simple usage of Docker, usually for this purpose we use Docker Compose.