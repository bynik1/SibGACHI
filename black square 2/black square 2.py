from stegano import exifHeader

#secret = exifHeader.hide("black square 2.jpg", "modern Malevich square 2.jpg", "Битва негров ночью")
#Шифруем в картинку 4.jpg сообщение: Битва Негров ночью; зашифрованный файл с названием 4_secret.jpg

result = exifHeader.reveal("modern Malevich square 2.jpg")
result = result.decode()
#декодирование текста из изображения 1
print(result)