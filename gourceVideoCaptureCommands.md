Here are the command used to capture the gource video of the project
====================================================================

	gource --user-image-dir /home/trex22/Desktop/code/github/AvatarImages -1280x720 -o gource.ppm

	ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i gource.ppm -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4

