# deploy-node-red

This repository deploys a working instance of Node-RED under `piku` with a few extra nodes I normally find useful.

To publish this app to `piku`, clone this repository and run the following commands:

```bash
git remote add production piku@example.domain:nodered
git push production main
```

The `ENV` file assumes you've got DNS properly mapped to your `changeme.domain` and that are OK with it using plain HTTP. 

For minimal security, I recommend changing the password on the `ENV` file and deploying this behind Cloudflare by adding the following lines to `ENV`:

```bash
HTTPS_ONLY=True
NGINX_CLOUDFLARE_ACL=True
```
