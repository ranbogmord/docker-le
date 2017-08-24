# ranbogmord/docker-le

Let's Encrypt container for docker using the standalone method.

## Usage
Getting certificates
```
docker run \
	-p 80:80 -p 443:443 \
	--mount type=bind,src=/path/to/storage,dst=/etc/letsencrypt \
	-e EMAIL=<email> \
	-e URL=example.com \
	-e EXTRA_DOMAINS=www.example.com,ftp.example.com # optional
	ranbogmord/docker-le
```

Renewing
```
docker run \
	-p 80:80 -p 443:443 \
	--mount type=bind,src=/path/to/storage,dst=/etc/letsencrypt \
	ranbogmord/docker-le
```

