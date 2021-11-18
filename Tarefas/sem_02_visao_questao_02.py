class Motores:
    
    def __init__(self, id = [], velocidade = [], sentido_de_giro = []):
        self.__id = id
        self.__velocidade = velocidade
        self.__sentido_de_giro = sentido_de_giro

    @property
    def id(self):
        print(f'Motor 01: [ID: {self.__id[0]}]')
        print(f'Motor 02: [ID: {self.__id[1]}]')
    
    @id.setter
    def id(self, novo_id):
        self.__id = novo_id
    
    @property
    def velocidade(self):
        return self.__velocidade
    
    @velocidade.setter
    def velocidade(self, nova_velocidade):
        self.__velocidade = nova_velocidade

    @property
    def sentido_de_giro(self):
        return self.__sentido_de_giro
    
    @sentido_de_giro.setter
    def sentido_de_giro(self, novo_sentido_de_giro):
        self.__sentido_de_giro = novo_sentido_de_giro

class Movimento(Motores):
    
    def __init__(self, id, velocidade, sentido_de_giro):
        super().__init__(id, velocidade, sentido_de_giro)

    @property
    def movimento(self):
        if super().velocidade[0] == super().velocidade[1]:
            if super().velocidade[0] > 0 and super().velocidade[1] > 0:
                print(f'Robô andando para frente')
            else:
                print(f'Robô andando para trás')
        else:
            print('O Robô está girando')
    
    @property
    def giro(self):
        if super().velocidade[0] != super().velocidade[1]:
            if super().velocidade[0]  > super().velocidade[1] :
                print(f'Robô girando no sentido: {super().sentido_de_giro[0]}')
            else:
                print(f'Robô girando no sentido: {super().sentido_de_giro[1]}')
        else:
            print(f'O robô não está girando')
    
    @property
    def parar(self):
        super().velocidade[0] = 0
        super().velocidade[1] = 0
        print(f'Robô parado')
        print(f'Motor 01: [Velocidade = {super().velocidade[0]} m/s]')
        print(f'Motor 01: [Velocidade = {super().velocidade[1]} m/s]')

robo = Movimento(['35960-000', '32756-895'], [-3, -2], ['Horário','Anti-horário' ])

robo.movimento
robo.giro
robo.parar
robo.velocidade = [14.7, 52.33]
robo.movimento
robo.giro
