from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Commande
from .serializers import CommandeSerializer
from articlecommande.models import ArticleCommande
from article.models import Article
@api_view(['GET', 'POST'])
def commande_list(request, format=None):
    """
    List all code Commandes, or create a new Commande.
    """
    if request.method == 'GET':
        commandes = Commande.objects.all()
        serializer = CommandeSerializer(commandes, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = CommandeSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            print(serializer.data['id'])
            commande = Commande.objects.get(pk=serializer.data['id'])
            
            for i in request.data['articles']:
                a = Article.objects.get(pk=i)
                artCom =ArticleCommande()
                artCom.article =a
                artCom.commande=commande
                artCom.save()
            
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)



@api_view(['GET', 'PUT', 'DELETE'])
def commande_detail(request, pk, format=None):
    """
    Retrieve, update or delete a code Commande.
    """
    try:
        commande = Commande.objects.get(pk=pk)
    except Commande.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CommandeSerializer(commande)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = CommandeSerializer(commande, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        commande.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)