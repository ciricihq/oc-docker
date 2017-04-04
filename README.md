# oc-docker

OpenComponents registry docker image

## Using this image

First download the latest build

```
docker pull ciricihq/oc-docker
```

Then create your configuration somewhere. You have an example in `config.js.dist`.

You have to provide to container a config.js file like the next one:

```javascript
exports.configuration = {
  verbosity: 1,
  baseUrl: 'https://my-components-registry.mydomain.com/',
  port: 3000,
  tempDir: './temp/',
  refreshInterval: 600,
  pollingInterval: 5,
  s3: {
    key: '---key---',
    secret: '---secret---',
    bucket: 'your-bucked',
    region: 'eu-west-1',
    path: '//your-bucket.s3-website-eu-west-1.amazonaws.com',
    componentsDir: 'components'
  },
  env: { name: 'production' }
}
```

Then you are ready to run your new brand oc registry:

```bash
docker run -d -v `pwd`/config.js:/app/config.js -p 3000 --name oc-registry ciricihq/oc-docker
```
