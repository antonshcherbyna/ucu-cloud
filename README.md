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
