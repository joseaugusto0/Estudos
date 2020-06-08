#Esse script irá criar uma pasta separada do dataset inteiro
#Irá criar uma pasta com um número reduzido de classes, e irá criar uma pasta para cada classe
#Porém, cada pasta criada é um atalho para a pasta da classe no dataset completo
import os
from glob import glob

def mkdir(p):
  if not os.path.exists(p):
    os.mkdir(p)

def link(src, dst):
  if not os.path.exists(dst):
    os.symlink(src, dst, target_is_directory=True)

mkdir('../VGG/fruits-360-small')


classes = [
  'Apple Golden 1',
  'Nut Forest',
  'Pear',
  'Pear Kaiser',
  'Kiwi',
  'Plum 3',
  'Strawberry',
  'Raspberry'
]

train_path_from = os.path.abspath('../VGG/fruits-360_dataset/fruits-360/Training')
valid_path_from = os.path.abspath('../VGG/fruits-360_dataset/fruits-360/Test')

train_path_to = os.path.abspath('../VGG/fruits-360-small/Training')
valid_path_to = os.path.abspath('../VGG/fruits-360-small/Test')

mkdir(train_path_to)
mkdir(valid_path_to)


for c in classes:
  link(train_path_from + '/' + c, train_path_to + '/' + c)
  link(valid_path_from + '/' + c, valid_path_to + '/' + c)

#Dar resize nas imagens
'''RESIZE = False
if RESIZE:
    import cv2
    for i in glob(train_path_to + '/*/*.jp*g'):
        image = cv2.imread(i)
        image = cv2.resize(image, (224,224))
        os.remove(i)
        cv2.imwrite(i,image)'''
