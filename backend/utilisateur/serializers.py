from rest_framework import serializers
from .models import Utilisateur


class UtilisateurSerializer(serializers.ModelSerializer):
    class Meta:
        model = Utilisateur
        fields = '__all__'

class UtilisateurAuthSerializer(serializers.ModelSerializer):
    class Meta:
        model = Utilisateur
        fields = ['id', 'name', 'email', 'password','addresse','cni','profil']
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
        instance.name = validated_data.get('name', instance.name)
        instance.email = validated_data.get('email', instance.email)
        instance.addresse = validated_data.get('addresse', instance.addresse)
        instance.cni = validated_data.get('cni', instance.cni)
        instance.profil = validated_data.get('profil', instance.profil)
        if password is not None:
            instance.set_password(password)

        instance.save()
        return instance




class ChangePasswordSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True, required=True) #validators=[validate_password]
    password2 = serializers.CharField(write_only=True, required=True)
    old_password = serializers.CharField(write_only=True, required=True)

    class Meta:
        model = Utilisateur
        fields = ('old_password', 'password', 'password2')

    def validate(self, attrs):
        if attrs['password'] != attrs['password2']:
            raise serializers.ValidationError({"password": "les mots de passe ne correspondent pas."})
        return attrs

    def validate_old_password(self, value):
        user = self.context['request'].user
         
        print('------------------------------------------------------------')
        print(user)
        print('------------------------------------------------------------')
        
        if not user.check_password(value):
            raise serializers.ValidationError({"old_password": "l'ancien mot de passe n'est pas correct."})
        return value

    def update(self, instance, validated_data):
        instance.set_password(validated_data['password'])
        instance.save()
        return instance
    



