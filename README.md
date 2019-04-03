# CloudHighload

## Dockerfile
### Local
 * clone the repo `git clone git@github.com:antonshcherbyna/CloudHighload.git`
 * create image `docker build -t highload . `
 * run container `docker run -p 5000:5000 highload`

### DockerHub
  * simply run `docker run -p 5000:5000 antonshcherbyna/highload`
  
## Kubernetes deployment
 * just run bash script `bash deploy.sh` (from cloud registry) or `bash deploy.sh -l` (from local image)
 
## How to interact with pods
 * go to `localhost:5000/livetest` for livetest, it should return `I'm working!`
 * go to `localhost:5000/test_cpu/?number=n`, it should return all factors of number n (n should be some integer)
 * go to `localhost:5000/test_memory/?number=n`, it should return large list of length n (n also should be some integer)
