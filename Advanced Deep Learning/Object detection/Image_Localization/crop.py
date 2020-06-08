'''import cv2
import matplotlib.pyplot as plt
img = cv2.imread('pokemon.png',cv2.IMREAD_UNCHANGED)
scale_percent = 3.5

width = int(img.shape[1] * scale_percent / 100)
height = int(img.shape[0] * scale_percent / 100)
dim = (width, height)

# resize image
resized = cv2.resize(img, dim, interpolation = cv2.INTER_AREA)
cv2.imwrite('resized.png',resized)
print(resized.shape)
plt.imshow(resized[:,:,0])
plt.show()'''

import torch
import matplotlib.pyplot as plt
from random import randint
import cv2
device = 'cuda' if torch.cuda.is_available() else 'cpu'
image = cv2.imread('resized.png', cv2.IMREAD_UNCHANGED)
trans_mask = image[:,:,3] == 0
image[trans_mask] = [0, 0, 0, 0]
image = cv2.cvtColor(image, cv2.COLOR_BGRA2RGB)
img = torch.tensor(image)


#print(img[:,:,:3])
plt.imshow(img[:,:,:3])
plt.show()
POKE_DIM = 200
img_h, img_w,_ = img.shape

#Criando o gerador de fundo preto:
#Localization vai ser (x1,y1, width, height)
def img_generator(batch_size=32):
    while True:
        #Batch, Altura, Largura, Colors
        background = torch.zeros((batch_size,POKE_DIM,POKE_DIM,3))
        localization = torch.zeros((batch_size,4))
        #Criando o gerador de quadrado branco
        print(img.shape)
        for i in range(batch_size):
            x1 = randint(0,(POKE_DIM-img_w))
            y1 = randint(0,(POKE_DIM-img_h))
            x2 = x1 + img_w
            y2 = y1 + img_h
            background[i,y1:y2,x1:x2,:] = img[:,:,:3]
            localization[i,0] = x1/POKE_DIM
            localization[i,1] = y1/POKE_DIM
            localization[i,2] = (x2-x1)/POKE_DIM
            localization[i,3] = (y2-y1)/POKE_DIM


        yield background/255.,localization

generator = img_generator()

for i,j in generator:
    plt.imshow(i[0])
    plt.show()
    break

