#Criar um kivy para mostrar a versão do python

from kivy.app import App
from kivy.uix.button import Button
import sys

class Py3(App):
    def build(self):
        return Button(text='Python: '+str(sys.version_info[0]))

Py3().run()