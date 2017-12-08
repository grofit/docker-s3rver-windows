# docker-s3rver-windows

A windows (nanoserver) docker image that will run S3rver (Fake/Emulated S3) and expose port 4568.

## Usage

```
docker run -d -p 4568:4568 grofit/s3rver-windows
```
    
## Environment Vars

**NodeVersion** - Defaults to 8.9.2