# Simple Goose AI container

My goal here was to keep the data on the container host, with a volume mounted where goose would put all its data and configuration.

## Build the image

```
$ make build-container
```

## Run goose container

```
$ make run
```

## Run shell inside
This runs bash inside the container so you can explore and run goose on your own.
```
$ make run-shell
```
