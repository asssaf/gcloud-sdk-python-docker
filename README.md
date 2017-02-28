```
$ mkdir ~/.config/gcloud
$ docker run --rm -it -v ~/.config/gcloud:/home/user/.config/gcloud -v /path/to/src:/home/user/src:ro asssaf/gcloud-sdk-python gcloud 
projects list
```
