from django.db import models

class Article(models.Model):
    title = models.CharField(max_length=255, default='titre')
    dimensions = models.CharField(max_length=255, default='dim')
    support = models.CharField(max_length=255, default='support')
    description = models.CharField(max_length=255, default='description')
    tools = models.CharField(max_length=255, default='tools')
    owner = models.CharField(max_length=255)
    price = models.PositiveIntegerField()
    image = models.ImageField(default='images/image.jpg')
    token = models.SET_NULL

    def __str__(self) -> str:
        return self.name
    
