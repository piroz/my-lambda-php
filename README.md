# my-lambda-php

# build local and run

```bash
$ docker build -t my-lambda-php .
$ docker run -p 8080:8080 my-lambda-php
```

Open `localhost:8080` in a browser

# deploy

## requirements

[aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
[sam cli](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html)

## build and deploy

```bash
$ sam build
$ sam deploy --guided
```

Open the URL listed in Sam's Output(API Gateway endpoint URL) in a browser.
