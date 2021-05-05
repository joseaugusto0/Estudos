import kivy
from kivy.app import App

from kivy.uix.widget import Widget
from kivy.properties import ObjectProperty


class MyGrid(Widget):
    #Iniciliando com valor nulo, já que a interface não foi carregada
    #Depois disso, ele atribuirá os Textinput do name e email com os valores
    name = ObjectProperty(None)
    email = ObjectProperty(None)

    #Adicionando trigger para o botão
    def btn(self):
        print("Name: {} \nEmail: {}\n\n".format(self.name.text,self.email.text))
        self.name.text = ""
        self.email.text = ""

    


class MyApp(App):
    def build(self):
        return MyGrid()


if __name__ == "__main__":
    MyApp().run()