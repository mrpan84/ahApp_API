from rest_framework import serializers
from stock.models import Bale, Consignment
from django.contrib.auth import authenticate



class BaleSerializer(serializers.ModelSerializer):
    class Meta: 
        model = Bale
        fields= "__all__"
        depth = 1


class ConsignmentSerializer(serializers.ModelSerializer):
    class Meta: 
        model = Consignment
        fields= "__all__"
        depth = 1