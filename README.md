# Dockerfile

A very beginner friendly Dockerfile, to help you get started.

This is how a typical Dockerfile looks like

```
# A dockerfile must always start by importing the base image.
# We use the keyword 'FROM' to do that.
# In our example, we want import the node image.
# So we write 'node' for the image name and 'latest' for the version.

FROM node:latest


# In order to launch our nodejs code, we must import it into our image.
# We use the keyword 'COPY' to do that.
# The first parameter 'app.js' is the name of the file on the host.
# The second parameter '/' is the path where to put the file on the image.
# Here we put the file at the image root folder.

COPY app.js /


# We need to define the command to launch when we are going to run the image.
# We use the keyword 'CMD' to do that.
# The following command will execute "node ./app.js".

CMD [ "node", "app.js" ]
```

### Running the demo repo

Step 1: Clone to repo

```
git clone https://github.com/trulymittal/docker.git
```

Step 2: cd into the repo

```
cd docker
```

Step 3: Build the docker image

```
docker build -t name-of-image-your-choice .
```

Step 4: Run the docker container from the image

```
docker run name-of-image-your-choice
```

Thats all you need to do, to run this basic example.

## Authors

* [**Truly Mittal**](https://trulymittal.com)

## License

This project is licensed under the MIT License.

## Acknowledgments

* [A beginner’s guide to Docker - **Gaël Thomas**](https://www.freecodecamp.org/news/a-beginners-guide-to-docker-how-to-create-your-first-docker-application-cc03de9b639f/)
