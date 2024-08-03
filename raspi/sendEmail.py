import smtplib
import imghdr
from email.message import EmailMessage


def callMe():

    Sender_Email = ""
    Reciever_Email = ""
    Password = ''

    newMessage = EmailMessage()
    newMessage['Subject'] = "Movement was detected"
    newMessage['From'] = Sender_Email
    newMessage['To'] = Reciever_Email
    newMessage.set_content('Here is the image')

    with open('../image.jpg', 'rb') as f:
        image_data = f.read()
        image_type = imghdr.what(f.name)
        image_name = f.name

    newMessage.add_attachment(image_data, maintype='image', subtype=image_type, filename=image_name)

    with smtplib.SMTP_SSL('smtp.gmail.com', 465) as smtp:
        
        smtp.login(Sender_Email, Password)
        smtp.send_message(newMessage)
