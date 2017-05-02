# Contributing to container-apps

1. Click the “Fork” button in the upper-right corner of the GitHub interface.
2. Add your image and application information.
3. Test it on a QNAP NAS by changing your preference application repository settings in Container Station.
4. Create a pull request (PR) to "**test**" branch.


# Design
## list.json
Looks like this:
```json
    {
        "description": "The official build of Ubuntu.",
        "repository": "dockerhub",
        "arch": "amd64",
        "icon": "http://download.qnap.com/QPKG/images/QPKG/container/ubuntu_icon.png",
        "displayName": "Ubuntu",
        "name": "ubuntu",
        "version": "16.04",
        "location": "https://hub.docker.com/_/ubuntu/", 
        "type": "docker"
    }
```

#### Description:
 - **displayName**: Image or application title.
 - **name**: Image or application name.
 - **version**: Image or application version.
 - **arch**: Compatible with `amd64` or `armhf` NAS architecture.
 - **type**: `docker`, `lxc`, `app`
 - **repository**:
  - `dockerhub`: The image repository is Docker Hub.
  - `qnap`: The image repository is QNAP. Images will be downloaded from *location* URL.
 - **icon**: Icon URL.
 - **location**: LXC image location or URL to Docker Hub image page.
 - **description**: Short description of image or application.
 - **inspect**: Image inspect information. Only works for LXC image.
