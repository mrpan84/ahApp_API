from django.shortcuts import render
from stock.models import *
from stock.serializers import *
from rest_framework import permissions, generics

# Create your views here.
class BaleDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Bale.objects.all()
    serializer_class = BaleSerializer


class BaleList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Bale.objects.all()
    serializer_class = BaleSerializer


class ConsignmentDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Consignment.objects.all()
    serializer_class = ConsignmentSerializer


class ConsignmentList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Consignment.objects.all()
    serializer_class = ConsignmentSerializer