from django.db import models
from utilisateur.models import Utilisateur

class Article(models.Model):
    title = models.CharField(max_length=255,blank=True)
    dimensions = models.CharField(max_length=255, default='10x10')
    support = models.CharField(max_length=255, default='toile')
    description = models.CharField(max_length=255, default='description')
    tools = models.CharField(max_length=255, default='tools')
    owner = models.ForeignKey(Utilisateur,default=1, on_delete=models.CASCADE)
    price = models.PositiveIntegerField()
    image = models.ImageField(default='images/image.jpg')
    type = models.CharField(max_length=255,default='Numerique',blank=True)
    token = models.SET_NULL

    def __str__(self) -> str:
        return self.title
    
