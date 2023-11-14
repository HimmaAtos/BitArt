from django.shortcuts import render
from rest_framework.views import APIView
from .serializers import UtilisateurSerializer, ChangePasswordSerializer
from .models import Utilisateur
from rest_framework import generics
from rest_framework.response import Response 
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.permissions import IsAuthenticated
import jwt, datetime



class RegisterView(APIView):
    def post(self, request):
        serializer = UtilisateurSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

class LoginView(APIView):
    def post(self, request):
        email = request.data['email']
        password = request.data['password']

        user = Utilisateur.objects.filter(email=email).first()

        if user is None:
            raise AuthenticationFailed('Utilisateur introuvable!')

        if not user.check_password(password):
            raise AuthenticationFailed('mot de passe incorrect!')

        payload = {
            'id': user.id,
            'exp': datetime.datetime.utcnow() + datetime.timedelta(minutes=60),
            'iat': datetime.datetime.utcnow()
        }

        token = jwt.encode(payload, 'secret', algorithm='HS256')

        response = Response()

        response.set_cookie(key='jwt', value=token, httponly=True)
        response.data = {
            'jwt': token
        }
        return response

class LogoutView(APIView):
    def post(self, request):
        response = Response()
        response.delete_cookie('jwt')
        response.data = {
            'message': 'success'
        }
        return response

  
""" class ChangePasswordView(APIView):
    def post(self, request):
        serializer = UtilisateurSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)


        email = request.data['email']
        old_password = request.data.get['old_password']
        new_password = request.data.get['new_password']
        confirm_password = request.data.get['confirm_password']

        user = Utilisateur.objects.filter(email=email).first()

       #je suppose que l'utilisateur est connecté, je doit faire un required
        if not user.check_password(old_password):
            raise AuthenticationFailed('mot de passe incorrect!')

        #if not check_password(old_password, confirm_password):
            #raise ValidationError('les mots de passe ne correspondent pas!')    ---<j'ai reglé ce probleme dans le serializer

        user.set

        
"""

class ChangePasswordView(generics.UpdateAPIView):
    queryset = Utilisateur.objects.all()
    #permission_classes = (IsAuthenticated,)
    serializer_class = ChangePasswordSerializer
        

        
        
        
    