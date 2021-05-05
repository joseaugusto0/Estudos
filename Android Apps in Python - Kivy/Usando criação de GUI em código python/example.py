import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button


class MyGrid(GridLayout):
    #kwargs permite mandar um número qualquer de parâmetros na forma de texto, por exemplo: chamando a função Function-->Function(text='fun', mid = 'Geeks')
    def __init__(self,**kwargs):
        super(MyGrid,self).__init__(**kwargs)

        #self.inside = GridLayout()
        #self.inside.cols = 2

        #Definindo numero de colunas
        self.cols = 2
        #Inserindo uma label 
        self.add_widget(Label(text="First Name: "))
        #Setando a entrada de texto como apenas uma linha
        self.f_name = TextInput(multiline=False)
        #Adicionando o TextInput
        self.add_widget(self.f_name)

        self.add_widget(Label(text="Last Name: "))
        self.l_name = TextInput(multiline=False)
        self.add_widget(self.l_name)

        self.add_widget(Label(text="Email: "))
        self.email = TextInput(multiline=False)
        self.add_widget(self.email)

        #Adicionar botão
        self.submit = Button(text='Submit',font_size = 40)
        self.add_widget(self.submit)


class MyApp(App):
    #Não precisa do __init__ pois está pegando do Init de App
    def build(self):
        return MyGrid()


if __name__ == "__main__":
    MyApp().run()