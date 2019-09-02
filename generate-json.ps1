# Uses docker v2 api to get all images from user "arm64v8"
# This is pretty ugly but seems to work.


$request1 = "https://hub.docker.com/v2/repositories/arm64v8/?page=1&page_size=100"
$request2 = "https://hub.docker.com/v2/repositories/arm64v8/?page=2&page_size=100"


$req1 = (Invoke-WebRequest $request1) | ConvertFrom-Json
$req2 = (Invoke-WebRequest $request2) | ConvertFrom-Json

$resultjson = @"
[

"@

$req1.results | ForEach-Object {
  $imgName = $_.name
  $imgdesc = $_.description

  $resultjson += @"
    {
        "description": "$imgdesc",
        "repository": "dockerhub",
        "arch": "arm64",
        "icon": "",
        "displayName": "$imgName",
        "name": "arm64v8/$imgName",
        "version": "latest",
        "location": "https://hub.docker.com/r/arm64v8/$imgName",
        "type": "docker"
    },

"@

}

$req2.results | ForEach-Object {
  $imgName = $_.name
  $imgdesc = $_.description

  $resultjson += @"
    {
        "description": "$imgdesc",
        "repository": "dockerhub",
        "arch": "arm64",
        "icon": "",
        "displayName": "$imgName",
        "name": "arm64v8/$imgName",
        "version": "latest",
        "location": "https://hub.docker.com/r/arm64v8/$imgName",
        "type": "docker"
    },

"@

}

$qnapjson = (Get-content .\qnap-images.json -raw)
$qnapjson = $qnapjson.Substring(3,$qnapjson.Length-6)

$resultjson += $qnapjson
$resultjson += @"
]
"@

$resultjson | Out-File .\list.json
