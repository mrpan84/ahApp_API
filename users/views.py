from django.shortcuts import render
from users.models import Ahpersonel, SysAdmin, Farmer, Buyer, User, Grower
from users.serializers import *
from rest_framework import permissions, generics

# Create your views here.
class AhpersonelDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Ahpersonel.objects.all()
    serializer_class = AhpersonelSerializer


class AhpersonelList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Ahpersonel.objects.all()
    serializer_class = AhpersonelSerializer


class SysAdminDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = SysAdmin.objects.all()
    serializer_class = SysAdminSerializer

class SysAdminList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = SysAdmin.objects.all()
    serializer_class = SysAdminSerializer

class FarmerDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Farmer.objects.all()
    serializer_class = FarmerSerializer

class FarmerList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Farmer.objects.all()
    serializer_class = FarmerSerializer


class BuyerDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Buyer.objects.all()
    serializer_class = BuyerSerializer


class BuyerList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Buyer.objects.all()
    serializer_class = BuyerSerializer


class UserDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = User.objects.all()
    serializer_class = UserSerializer

class UserList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = User.objects.all()
    serializer_class = UserSerializer


class GrowerDetail (generics.RetrieveAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Grower.objects.all()
    serializer_class = GrowerSerializer


class GrowerList (generics.ListAPIView):
    permission_classes = [permissions.AllowAny]
    queryset = Grower.objects.all()
    serializer_class = GrowerSerializer


