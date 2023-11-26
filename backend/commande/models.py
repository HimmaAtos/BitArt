from django.db import models
from utilisateur.models import Utilisateur
from article.models import Article


class Commande(models.Model):
    utilisateur = models.ForeignKey(Utilisateur, on_delete=models.CASCADE)
    articles = models.ManyToManyField(Article, through="articlecommande.ArticleCommande")
    dateCommande = models.DateTimeField(auto_now_add=True)
    transitionClient = models.CharField(max_length=255,blank=True)
