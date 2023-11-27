from rest_framework import serializers
from .models import Favori




class FavoriSerializer(serializers.ModelSerializer):
    class Meta:
        model = Favori
        fields = ['utilisateur', 'articles']