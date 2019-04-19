# App Engine ffmpeg

You can deploy this container on app engine for doing something with ffmpeg and php.

### General syntax
```
ffmpeg -i input.mov -strict -2 output.mp4
```

### MP4 - 1080p
```
ffmpeg -i input.mov -preset slow -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 4500k -minrate 4500k -maxrate 9000k -bufsize 9000k -vf scale=-1:1080 -strict -2 output1080p.mp4
```

### MP4 - 720p
```
ffmpeg -i input.mov -preset slow -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 2500k -minrate 1500k -maxrate 4000k -bufsize 5000k -vf scale=-1:720 -strict -2 output720p.mp4
```

### MP4 - 480p
```
ffmpeg -i input.mov -preset slow -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 1000k -minrate 500k -maxrate 2000k -bufsize 2000k -vf scale=854:480 -strict -2 output480p.mp4
```
### MP4 - 360p
```
ffmpeg -i input.mov -preset slow -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 750k -minrate 400k -maxrate 1000k -bufsize 1500k -vf scale=-1:360 -strict -2 output360p.mp4
```
