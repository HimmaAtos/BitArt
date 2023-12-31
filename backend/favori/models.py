from django.db import models
from utilisateur.models import Utilisateur
from article.models import Article

class Favori(models.Model):
    utilisateur = models.OneToOneField(Utilisateur, on_delete=models.CASCADE)
    articles = models.ManyToManyField(Article)