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