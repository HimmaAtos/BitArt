from rest_framework import serializers
from .models import Commande
from utilisateur.serializers import UtilisateurAuthSerializer
from article.serializers import ArticleSerializer




class CommandeSerializer(serializers.ModelSerializer):
    # utilisateur = UtilisateurAuthSerializer(read_only=True)
    articles = ArticleSerializer(read_only=True,many=True)
    class Meta:
        model = Commande
        fields = ['id','utilisateur', 'articles', 'dateCommande']