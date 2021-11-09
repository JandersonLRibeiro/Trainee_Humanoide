import os

caminho_velho = "/home/janderson/Downloads"
caminho_novo = "/home/janderson/Documentos/Trainee_Humanoide/Visao_01/Imagens"
lista_imagens = os.listdir(caminho_velho)

for index, imagem in enumerate(lista_imagens):
    if ".jpg" in imagem:
        os.rename(os.path.join(caminho_velho, imagem), os.path.join(caminho_novo, ''.join(str(index)+'.jpg')))

