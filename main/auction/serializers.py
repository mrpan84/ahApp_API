from rest_framework import serializers
from auction.models import *
from django.contrib.auth import authenticate

class AuctionSerializer(serializers.ModelSerializer):
    class Meta: 
        model=Auction
        fields= "__all__"

class AuctionStockSerializer(serializers.ModelSerializer):
    class Meta: 
        model=AuctionStock
        fields= "__all__"
        depth = 1

class BidsSerializer(serializers.ModelSerializer):
    class Meta: 
        model=Bid
        fields= "__all__"