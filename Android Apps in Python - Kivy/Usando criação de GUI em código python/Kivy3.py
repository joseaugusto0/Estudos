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

        #Definindo o número de colunas da primeira grid
        self.cols = 1

        #Criando uma Grid dentro de outra Grid
        self.inside = GridLayout()
        self.inside.cols = 2


        #Inserindo uma label 
        self.inside.add_widget(Label(text="First Name: "))
        #Setando a entrada de texto como apenas uma linha
        self.f_name = TextInput(multiline=False)
        #Adicionando o TextInput dentro da outra grid
        self.inside.add_widget(self.f_name)

        self.inside.add_widget(Label(text="Last Name: "))
        self.l_name = TextInput(multiline=False)
        self.inside.add_widget(self.l_name)

        self.inside.add_widget(Label(text="Email: "))
        self.email = TextInput(multiline=False)
        self.inside.add_widget(self.email)

        #Adicionando a segunda grid na primeira
        self.add_widget(self.inside)

        #Adicionar botão
        self.submit = Button(text='Submit',font_size = 40)
        #Definindo a função que o botão realizará ao ser pressionado
        self.submit.bind(on_press=self.pressed)
        self.add_widget(self.submit)

    #Criando trigger event para o botão
    def pressed(self,instance):
        #Pegando os valores dos textinputs
        name = self.f_name.text
        last = self.l_name.text
        email = self.email.text
        print("Name: {} \nLast Name: {} \nEmail: {}\n\n".format(name,last,email))
        #Setando um texto na label
        self.f_name.text = ""


class MyApp(App):
    #Não precisa do __init__ pois está pegando do Init de App
    def build(self):
        return MyGrid()


if __name__ == "__main__":
    MyApp().run()