# Command	Description


`docker CLI` 	Start the Docker command line interface.

`docker images` 	Lists the images.

`docker pull hello-world` 	Pulls the latest image or repository from a registry.
`docker push hello-world` 	Pushes an image or a repository to a registry.

`docker build . -t myimage:v1` 	Builds the image and tags the image id.
`docker build` 	Builds an image from a Dockerfile.

`docker run hello-world`	Runs a command in a new container.
`docker run -p hello-world` 	Runs the container by publishing the ports. `docker run -dp 8080:8080 myimage:v1`
`docker stop hello-world`	Stops one or more running containers.
`docker stop $(docker ps -q)` 	Stops all running containers.

`docker container rm <container_id>` 	Removes a container.

`docker ps` 	Lists the containers.
`docker ps -a` 	Lists the containers that ran and exited successfully.

`docker tag` 	Creates a tag for a target image that refers to a source image.
`docker –version` 	Displays the version of the Docker CLI.

`export MY_NAMESPACE` 	Exports a namespace as an environment variable.
`ibmcloud cr images` 	Lists images in the IBM Cloud Container Registry.
`ibmcloud cr login` 	Logs your local Docker daemon into IBM Cloud Container Registry.
`ibmcloud cr namespaces` 	Views the namespaces you have access to.
`ibmcloud cr region-set` 	Ensures that you are targeting the region appropriate to your cloud account.
`ibmcloud target` 	Provides information about the account you’re targeting.
`ibmcloud version` 	Displays the version of the IBM Cloud CLI.


`git clone` 	Clones the git repository that contains the artifacts needed.

`curl localhost:8080` 	Pings the application.

`ls` 	Lists the contents of this directory to see the artifacts. 

`exit` 	Closes the terminal session.