import pandas as pd
import numpy
import re
import cv2

data = pd.read_csv('annotations.csv', usecols = ["filename","xmin","ymin","xmax","ymax"])
#print(data.iterrows())
row_count = 0
output = ""
cont = 0


#Get the row number in the pandas dataframe
for col in data.index:
    row_count +=1

for filename,row in data.iterrows():
    try:
        filename = row['filename']
        image = cv2.imread("D:\Cursos\Advanced Deep Learning\Resnet\dataset-master\dataset-master\Img\{}".format(filename))
        #image = cv2.cvtColor(image,cv2.COLOR_BGR2RGB)
        cropped = image[(int(row['ymin'])):(int(row['ymax'])),(int(row['xmin'])):(int(row['xmax']))]
        name = "D:\Cursos\Advanced Deep Learning\Resnet\dataset-master\dataset-master\Cropped\Bloodcell_{}.jpg".format(cont)
        cv2.imwrite(name,cropped)

        cont += 1
    except:
        print(filename)
'''
for filename in data.items():
    #filename = row['filename']
    #image = cv2.imread("D:\Cursos\Advanced Deep Learning\Resnet\dataset-master\dataset-master\JPEGImages\{}".format(filename))
    #image = cv2.cvtColor(image,cv2.COLOR_BGR2RGB)
    print(filename)
    break'''
    

    
    
    #cv2.imshow("Cropped",cropped)
    #cv2.waitKey(0)




    

