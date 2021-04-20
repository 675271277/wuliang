import os
import shutil
import imageio

PATH_INPUT_IMAGE = 'IMAGE/'
PATH_OUTPUT_IMAGE = 'IMAGE_GIF/'


if os.path.exists(PATH_OUTPUT_IMAGE) is True:
    shutil.rmtree(PATH_OUTPUT_IMAGE)
os.mkdir(PATH_OUTPUT_IMAGE)

# 设置图片格式
FORMAT_INPUT_IMAGE = '.png'

# 命名动图
GIF_NAME = "imgGIF.gif"

# 每张图片持续时间
DURATION_FRAME = 0.15


REPEAT_TIMES_FRAME = 0.1



imgGIF = []
imgNames = sorted((iN for iN in os.listdir(PATH_INPUT_IMAGE) if iN.endswith(FORMAT_INPUT_IMAGE)))

for imgName in imgNames:
    imgGIF.append(imageio.imread(PATH_INPUT_IMAGE + imgName))
imageio.mimsave(PATH_OUTPUT_IMAGE + GIF_NAME, imgGIF, duration=DURATION_FRAME)


print('Complete')
