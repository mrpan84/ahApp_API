from rest_framework import serializers
from users.models import Ahpersonel, SysAdmin, Farmer, Buyer, User, Grower
from django.contrib.auth import authenticate



class UserSerializer(serializers.ModelSerializer):
    class Meta: 
        model=User
        fields= ["uid", "fname", "sname", "phone", "date_joined", "password" ]
        depth = 1


class AhpersonelSerializer(serializers.ModelSerializer):
    class Meta: 
        model=Ahpersonel
        fields= ["uid", "date_added"]
        depth = 1


class SysAdminSerializer(serializers.ModelSerializer):
    class Meta: 
        model=SysAdmin
        fields= ["uid", "date_appointed", "active"]
        depth = 1


class FarmerSerializer(serializers.ModelSerializer):
    class Meta: 
        model=Farmer
        fields= ["date_registered"]


class BuyerSerializer(serializers.ModelSerializer):
    class Meta: 
        model=Buyer
        fields= ["registered_on","buyer"]


class GrowerSerializer(serializers.ModelSerializer):
    class Meta: 
        model=Grower
        fields= ["grower_id", "isclub", "club_name", "district", "registered"]

