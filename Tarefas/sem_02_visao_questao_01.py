class Bola:
    
    def __init__(self,cor, circunferencia, material):
        self.__cor = cor
        self.__circunferencia = circunferencia
        self.__material = material

    @property
    def cor(self):
        print (f'A cor da bola é: {self.__cor}')

    @cor.setter
    def cor(self, nova_cor):
        self.__cor = nova_cor

bola = Bola('branca', 3.14, 'PVC')
bola.cor
bola.cor = 'azul'
bola.cor