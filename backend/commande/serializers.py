from rest_framework import serializers
from .models import Commande




class CommandeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Commande
        fields = ['utilisateur', 'articles', 'dateCommande', 'quantite']