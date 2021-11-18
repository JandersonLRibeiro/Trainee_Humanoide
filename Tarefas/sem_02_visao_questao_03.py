class Pessoa:

    def __init__(self, nome, sobrenome, cpf):
        self.__nome = nome
        self.__sobrenome = sobrenome
        self.__cpf = cpf
    
    @property
    def nome_completo(self):
        print(f'Nome: {self.__nome} {self.__sobrenome}')
        print(f'CPF: {self.__cpf}')

class Discente(Pessoa):

    def __init__(self, nome, sobrenome, cpf, matricula):
        super().__init__(nome, sobrenome, cpf)
        self.__matricula = matricula
    
    @property
    def dados(self):
        pessoa.nome_completo
        print(f'Matrícula: {self.__matricula}')


pessoa = Discente('Janderson', 'Ribeiro', '475.142.023-85', '11821EQU019')
pessoa.dados    