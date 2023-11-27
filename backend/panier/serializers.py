from rest_framework import serializers
from .models import Panier


class PanierSerializer(serializers.ModelSerializer):
    class Meta:
        model = Panier
        fields = '__all__'

class PanierAllSerializer(serializers.ModelSerializer):
    class Meta:
        model = Panier
        exclude = ['id','utilisateur']
        depth = 1




    def create(self, validated_data):
        password = validated_data.pop('password', None)
        instance = self.Meta.model(**validated_data)
        if password is not None:
            instance.set_password(password)
        instance.save()
        return instance
    
    def update(self, instance, validated_data):
        password = validated_data.pop('password', None)
        instance.email = validated_data.get('email', instance.email)
        instance.first_name = validated_data.get('first_name', instance.first_name)
        instance.last_name = validated_data.get('last_name', instance.last_name)
        instance.addresse = validated_data.get('addresse', instance.addresse)
        instance.cni = validated_data.get('cni', instance.cni)
        instance.profil = validated_data.get('profil', instance.profil)
        if password is not None:
            instance.set_password(password)

        instance.save()
        return instance