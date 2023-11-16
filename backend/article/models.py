from django.db import models

class Article(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    owner = models.CharField(max_length=255)
    price = models.PositiveIntegerField()
    token = models.SET_NULL

    def __str__(self) -> str:
        return self.name
    

