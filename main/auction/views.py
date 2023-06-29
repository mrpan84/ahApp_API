from django.shortcuts import render
from auction.models import *
from auction.serializers import AuctionsSerializer, AuctionStockSerializer
from rest_framework import permissions, generics

# Create your views here.
class AuctionDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Auction.objects.all()
    serializer_class = AuctionsSerializer


class AuctionList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Auction.objects.all()
    serializer_class = AuctionsSerializer


class AuctionStockDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = AuctionStock.objects.all()
    serializer_class = AuctionStockSerializer


class AuctionStockList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = AuctionStock.objects.all()
    serializer_class = AuctionStockSerializer

