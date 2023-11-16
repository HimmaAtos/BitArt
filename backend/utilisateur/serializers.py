from rest_framework import serializers
from .models import Utilisateur


class UtilisateurSerializer(serializers.ModelSerializer):
    class Meta:
        model = Utilisateur
        fields = '__all__'

class UtilisateurAuthSerializer(serializers.ModelSerializer):
    class Meta:
        model = Utilisateur
        fields = ['id', 'email', 'password','first_name','last_name','addresse','cni','profil']
        extra_kwargs = {
            'password': {'write_only': True}
        }




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

