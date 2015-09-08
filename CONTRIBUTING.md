# Contributing to container-apps

1. Click the “Fork” button in the upper-right corner of the GitHub interface.
2. Add your image and application information. 
3. Test it on a QNAP NAS by changing your preference application repository settings in Container Station.
4. Create a pull request (PR).


# Design
#### qpkgcenter_eng.xml rule
Looks like this:
```xml
	<ctstation>
		<name>Jenkins</name>
		<internalName>jenkins</internalName>
		<version>latest</version>
		<arch>amd64</arch>
		<category>qnap</category>
		<imageType>docker</imageType>
		<repository>dockerhub</repository>
		<icon>http://download.qnap.com/QPKG/images/QPKG/container/jenkins_icon.png</icon>
		<location>https://hub.docker.com/_/jenkins/</location>
		<description>
			<![CDATA[Official Jenkins Docker image.]]>
		</description>
		<inspect>
			<![CDATA[]]>
		</inspect>
	</ctstation>
```

Description:
 - **name**: Image or application title.
 - **internalName**: The name of the image in Docker Hub. Only [a-z0-9-_.] are allowed.
 - **version**: Image or application version.
 - **arch**: Compatible with `amd64` or `armhf` NAS architecture.
 - **category**: 
  - `qnap`: Images with `qnap` category are listed under `"QNAP Recommended Images"` section.
  - `dockerhub`: Images with `dockerhub` category are listed under `"Selected Images From Docker Hub Registry"` section.
  - `application`: Applications with `application` category are listed under `"QNAP Recommended Images"` section.
 - **imageType**: `lxc`, `docker`, `app`
 - **repository**: 
  - `qnap`: The image repository is QNAP. Images will be downloaded from *location* URL.
  - `dockerhub`: The image repository is Docker Hub.
 - **icon**: Icon URL.
 - **size**: Size in bytes.
 - **location**: LXC image location or URL to Docker Hub image page.
 - **description**: Short description of image or application.
 - **inspect**: Image inspect information. Only works for LXC image.

#### Add new image
1. Add image information to `qpkgcenter_eng.xml`
2. Change your *Application Repository* setting on the NAS.


#### Add new application
1. Create an application folder with the application name under the `template` folder.
2. Create three files:
  - **description.md**: Write content with the easy to use Markdown syntax.
  - **docker-compose.yml**: Define the services that make up your application in this file.
  - **info.yml**: Define your application information using the columns in qpkgcenter_eng.xml.all columns are including `qpkgcenter_eng.xml`.
3. Test `docker-compose.yml` can be run up by `docker-compose` command before push it to GitHub.
4. Change your *Application Repository* setting on NAS.
