from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Panier
from .serializers import PanierSerializer


@api_view(['GET', 'POST'])
def panier_list(request, format=None):
    """
    List all code paniers, or create a new panier.
    """
    if request.method == 'GET':
        paniers = Panier.objects.all()
        serializer = PanierSerializer(paniers, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = PanierSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)




@api_view(['GET', 'PUT', 'DELETE'])
def panier_detail(request, pk, format=None):
    """
    Retrieve, update or delete a code Panier.
    """
    try:
        panier = Panier.objects.get(pk=pk)
    except Panier.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PanierSerializer(panier)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = PanierSerializer(panier, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        panier.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)