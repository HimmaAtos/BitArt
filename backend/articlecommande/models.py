from django.db import models
from article.models import Article
from commande.models import Commande as C

class ArticleCommande(models.Model):
    commande = models.ForeignKey(C, on_delete=models.CASCADE)
    article = models.ForeignKey(Article, on_delete=models.CASCADE)
    transitionVendeur = models.CharField(max_length=255,blank=True)
    quantite = models.IntegerField(default=1)

    def prix_total():
        pass 