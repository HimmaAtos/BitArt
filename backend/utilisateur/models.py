from django.db import models

from django.contrib.auth.models import AbstractUser
from rest_framework.exceptions import AuthenticationFailed
import jwt, datetime

# Create your models here.
class Utilisateur(AbstractUser):
    email = models.CharField(max_length=255, unique=True)
    password = models.CharField(max_length=255)
    addresse = models.CharField(max_length=255,blank=True)
    cni = models.CharField(max_length=255,blank=True)
    profil = models.CharField(max_length=255,default='Acheteur')
    image = models.ImageField(default='images/image.jpg')
    username = None

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

def isAuthenticate(request):
    token = request.COOKIES.get('jwt')
    if not token:
        raise AuthenticationFailed('Unauthenticated!')

    try:
        payload = jwt.decode(token, 'secret', algorithms=['HS256'])
    except jwt.ExpiredSignatureError:
        raise AuthenticationFailed('Unauthenticated!')
    
    return payload