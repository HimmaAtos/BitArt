from django.shortcuts import render
from rest_framework.views import APIView
from .serializers import UtilisateurSerializer
from .models import Utilisateur
from rest_framework.response import Response 
from rest_framework.exceptions import AuthenticationFailed
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
            raise AuthenticationFailed('Incorrect password!')

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

class ChangePassword(APIView):
    def post(self, request):
        confirm = request.data['confirm']
        password = request.data['password']
        if confirm != password :
            raise AuthenticationFailed('Veillez saisir de nouveau le mot de pass!')

        token = request.COOKIES.get('jwt')
        if not token:
            raise AuthenticationFailed('Non authentifier!')

        try:
            payload = jwt.decode(token, 'secret', algorithms=['HS256'])
        except jwt.ExpiredSignatureError:
            raise AuthenticationFailed('Non authentifier!')

        user = Utilisateur.objects.filter(id=payload['id']).first()
        serializer = UtilisateurSerializer(user)
        # serializer.password = password
        serializer.data['password'] = password
        serializer.is_valid(raise_exception=True)
        serializer.save()

        response = Response()

        response.set_cookie(key='jwt', value=token, httponly=True)
        response.data = {
            'data': serializer
        }
        return response

class UserView(APIView):

    def get(self, request):
        token = request.COOKIES.get('jwt')

        if not token:
            raise AuthenticationFailed('Unauthenticated!')

        try:
            payload = jwt.decode(token, 'secret', algorithms=['HS256'])
        except jwt.ExpiredSignatureError:
            raise AuthenticationFailed('Unauthenticated!')

        user = Utilisateur.objects.filter(id=payload['id']).first()
        print(user)
        serializer = UtilisateurSerializer(user)
        return Response(serializer.data)
