# Understanding the Dockerfile

## 1: Specify the Base Image 

```
ROM node:14
```

- FROM: Specifies the base image for the Docker container.
- node:14: Pulls the official Node.js image with version 14 from the Docker registry.

## 2: Set Environment Variables

```
ENV NODE_ENV=production
ENV PORT=3000
```

- ENV: Sets environment variables inside the Docker container.
- NODE_ENV=production: Sets the Node.js environment to production.
- PORT=3000: Sets the port on which the Node.js application will listen.

## 3: Set the Working Directory

```
WORKDIR /usr/src/app
```

- WORKDIR: Defines the working directory for subsequent instructions, simplifying file path references.
- /usr/src/app: The directory inside the container to store your application code, keeping it 

## 4: Copy Package Files

```
COPY package*.json ./
```

- COPY: Copies files from your local machine to the container.
- package*.json ./: Copies both package.json and package-lock.json files

## 5: Install Dependencies

```
RUN npm install --production
```

- RUN: Executes commands in the container during the build process.
- npm install –production: Installs dependencies listed in package.json without devDependencies.

## 6: Copy Application Code

```
COPY . .
```

- COPY . .: Copies all files and directories from the current directory on the local host to the current directory in the Docker container.

## 7: Add Additional File(s)

```
# ADD <source_path> <destination_path>
ADD public/index.html /app/public/index.html
```

- public/index.html: Path to the file or directory on the host machine.
- /app/public/index.html: Path where you want to add the file or directory inside the Docker image.


## 8: Expose the Application Port

```
EXPOSE $PORT
```

- EXPOSE: Informs Docker that the container will listen on the specified port at runtime.
- $PORT: The environment variable representing the port number defined earlier.

## 9: Specify the Default Command

```
CMD ["node", "app.js"]
```

- CMD: This instruction specifies the default command and/or parameters to execute at the entry point of the container.
- ["node", "app.js"]: This array specifies the command to run any arguments for that command. In this case, it tells Docker to execute the node command with app.js as the argument.

## 10: Label the Image

```
LABEL version="1.0"
LABEL description="Node.js application Docker image"
LABEL maintainer="Your Name"
```

- LABEL: Adds metadata to the Docker image.
- version="1.0": Specifies the version of the Docker image.
- description="Node.js application Docker image" : Provides a description of the Docker image.
- maintainer="Your Name": Specifies the maintainer of the Docker image.

## 11: Add a Healthcheck

```
HEALTHCHECK --interval=30s 
    --timeout=10s 
    --start-period=5s 
    --retries=3 CMD curl -fs http://localhost:$PORT 
    || exit 1
```

- HEALTHCHECK: Configures a health check to ensure the container is running correctly.
- --interval=30s: Specifies the interval between health checks.
- --timeout=10s: Sets the timeout for each health check.
- --start-period=5s: Defines the start period during which the container must initialize before health checks begin.
- --retries=3: Sets the number of retries before considering the container unhealthy.
- CMD curl -fs http://localhost:$PORT || exit 1: Specifies the command to run for health checks. It checks if a request to http://localhost:$PORT succeeds; otherwise, it exits with code 1, indicating failure.


## 12: Set a Non-Root User

```
USER node
```

- USER: Sets the user that will run the subsequent instructions in the Dockerfile.
- node: Specifies the user named node to run the commands for security purposes.
