# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Ahpersonel(models.Model):
    uid = models.IntegerField(primary_key=True)
    date_added = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'ahpersonel'


class AuctionStock(models.Model):
    auction_stock_id = models.AutoField(primary_key=True)
    reg_number = models.IntegerField()
    auction_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auction_stock'
        unique_together = (('reg_number', 'auction_id'),)


class Auctions(models.Model):
    auction_id = models.AutoField(primary_key=True)
    created_date = models.DateTimeField()
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auctions'


class Bales(models.Model):
    bale_id = models.AutoField(primary_key=True)
    reg_number = models.IntegerField()
    weight = models.DecimalField(max_digits=5, decimal_places=2)
    rg = models.IntegerField(db_column='RG')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'bales'


class Bids(models.Model):
    bid_id = models.AutoField(unique=True)
    buyer_id = models.IntegerField(primary_key=True)
    auction_stoc_id = models.IntegerField()
    bid_time = models.DateTimeField()
    amount = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'bids'
        unique_together = (('buyer_id', 'auction_stoc_id'),)


class Buyers(models.Model):
    buyer_id = models.IntegerField(primary_key=True)
    registered_on = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'buyers'


class Consignments(models.Model):
    reg_number = models.AutoField(primary_key=True)
    grower_id = models.IntegerField()
    consignment_date = models.DateTimeField()
    quality = models.TextField(blank=True, null=True)
    attempts = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'consignments'


class Farmers(models.Model):
    farmer_id = models.IntegerField(primary_key=True)
    date_registered = models.DateTimeField()
    grower_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'farmers'


class Grower(models.Model):
    grower_id = models.AutoField(primary_key=True)
    isclub = models.IntegerField(db_column='isClub')  # Field name made lowercase.
    club_name = models.CharField(max_length=255, blank=True, null=True)
    district = models.CharField(max_length=25)
    registered = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'grower'


class SysAdmin(models.Model):
    uid = models.IntegerField(primary_key=True)
    date_appointed = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'sys_admin'


class Users(models.Model):
    uid = models.AutoField(primary_key=True)
    fname = models.CharField(max_length=20)
    sname = models.CharField(max_length=20)
    phone = models.CharField(unique=True, max_length=13)
    date_joined = models.DateTimeField()
    password = models.CharField(max_length=65)

    class Meta:
        managed = False
        db_table = 'users'
