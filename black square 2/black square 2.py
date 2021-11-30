from stegano import exifHeader

#secret = exifHeader.hide("4.jpg", "4_secret.jpg", "Битва негров ночью")
#Шифруем в картинку 4.jpg сообщение: Битва Негров ночью; зашифрованный файл с названием 4_secret.jpg

result = exifHeader.reveal("4_secret.jpg")
result = result.decode()
#декодирование текста из изображения 1
print(result)