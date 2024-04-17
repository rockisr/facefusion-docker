# bulk download the assets of model
wget $(wget -q -O - https://api.github.com/repos/facefusion/facefusion-assets/releases/latest  \
|  jq -r '.assets[] | select(.name | contains ("onnx")) | .browser_download_url')
