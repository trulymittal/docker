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








