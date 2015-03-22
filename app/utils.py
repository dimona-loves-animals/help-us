import mailchimp
from app import app

def get_mailchimp_api():
    key = app.config['MAILCHIMP_API_KEY']
    return mailchimp.Mailchimp(key) #your api key here