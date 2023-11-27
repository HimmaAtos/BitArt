from django.db import models
from article.models import Article
from utilisateur.models import Utilisateur




class Panier(models.Model):
    utilisateur = models.OneToOneField(Utilisateur, on_delete=models.CASCADE)
    articles = models.ManyToManyField(Article)

    def nombre_articles():
        pass

    














































