from django.db import models
from utilisateur.models import Utilisateur

class Article(models.Model):
    title = models.CharField(max_length=255, default='titre')
    dimensions = models.CharField(max_length=255, default='dim')
    support = models.CharField(max_length=255, default='support')
    description = models.CharField(max_length=255, default='description')
    tools = models.CharField(max_length=255, default='tools')
    owner = models.ForeignKey(Utilisateur,default=1, on_delete=models.CASCADE)
    price = models.PositiveIntegerField()
    image = models.ImageField(default='images/image.jpg')
    token = models.SET_NULL

    def __str__(self) -> str:
        return self.title
    
