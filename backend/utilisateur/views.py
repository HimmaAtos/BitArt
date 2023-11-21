from django.shortcuts import render
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.views import APIView
from .serializers import UtilisateurSerializer
from .models import Utilisateur,isAuthenticate
from rest_framework import generics
from rest_framework.response import Response 
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.permissions import IsAuthenticated
import jwt, datetime


"""
    Register
"""
class RegisterView(APIView):
    def post(self, request):
        serializer = UtilisateurAuthSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

"""
    Login 
"""
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

"""
    Log out
"""
class LogoutView(APIView):
    def post(self, request):
        response = Response()
        response.delete_cookie('jwt')
        response.data = {
            'message': 'success'
        }
        return response
      

"""
    List of utilisateurss
"""

@api_view(['GET', 'POST'])
def utilisateur_list(request):
    payload = isAuthenticate(request)
    if request.method == 'GET':
        utilisateurs = Utilisateur.objects.all()
        serializer = UtilisateurAuthSerializer(utilisateurs, many=True)
        return Response(serializer.data)
   

"""
    Read by id, Update and delete
"""

@api_view(['GET', 'PUT', 'DELETE'])
def utilisateur_detail(request, pk):
    payload = isAuthenticate(request)
    try:
        utilisateur = Utilisateur.objects.get(pk=pk)
    except Utilisateur.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        print(utilisateur)
        serializer = UtilisateurAuthSerializer(utilisateur)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = UtilisateurAuthSerializer(utilisateur, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    elif request.method == 'DELETE':
        utilisateur.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
