```
$ mkdir ~/.config/gcloud
$ docker run --rm -it -v ~/.config/gcloud:/home/user/.config/gcloud -v /path/to/src:/home/user/src:ro asssaf/gcloud-sdk-python gcloud auth login

$ ... gcloud deploy src/app.yaml
$ ... --net host ,,, dev_appserver.py src/app.yaml
```
