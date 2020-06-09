import kivy
from kivy.app import App
from kivy.uix.widget import Widget
from kivy.properties import ObjectProperty
from kivy.graphics import Rectangle
from kivy.graphics import Color
from kivy.graphics import Line

class Touch(Widget):
    def __init__(self,**kwargs):
        super(Touch, self).__init__(**kwargs)

        #Desenhar um retângulo na interface com o canvas, que é uma propriedade do OpenGL
        with self.canvas:
            
            #Mudando o valor do canvas
            Color(1,0,0,.5, mode='rgba')
            #Desenhando o retângulo
            self.rect = Rectangle(pos=(0,0), size=(50,50))

            Color(0,1,0,.5, mode='rgba')
            #Desenhando uma linha
            Line(points=(20,30,400,500,60,500)) #x1,y1,x2,y2,x3,y3


            #Color(1,1,0,.5, mode='rgba')
            #self.rect = Rectangle(pos=(200,300), size=(100,50))


    def on_touch_down(self,touch):
        #Ao clicar com o mouse, a posição do retâgulo será atribuida a posição em que foi clicada
        self.rect.pos = touch.pos
        print("Mouse down",touch)

    def on_touch_move(self,touch):
        #Ao movimentar com o mouse, a posição do retâgulo será atribuida a posição em que será movimentado
        self.rect.pos = touch.pos
        print("Mouse move",touch)





class MyApp(App):
    def build(self):
        return Touch()


if __name__ == "__main__":
    MyApp().run()