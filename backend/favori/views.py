from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Favori
from .serializers import FavoriSerializer


@api_view(['GET', 'POST'])
def favori_list(request, format=None):
    """
    List all code Favoris, or create a new Favori.
    """
    if request.method == 'GET':
        favoris = Favori.objects.all()
        serializer = FavoriSerializer(favoris, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = FavoriSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET', 'PUT', 'DELETE'])
def favori_detail(request, pk, format=None):
    """
    Retrieve, update or delete a code Favori.
    """
    try:
        favori = Favori.objects.get(pk=pk)
    except Favori.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = FavoriSerializer(favori)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = FavoriSerializer(favori, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        favori.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)