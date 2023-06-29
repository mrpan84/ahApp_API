from django.db import models

# Create your models here.
# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

class Users(models.Model):
    uid = models.AutoField(primary_key=True)
    fname = models.CharField(max_length=20)
    sname = models.CharField(max_length=20)
    phone = models.CharField(unique=True, max_length=13)
    date_joined = models.DateTimeField()
    password = models.CharField(max_length=65)

    class Meta:
        managed = True
        db_table = 'users'

    def __str__(self):
        return self.fname


class Buyers(models.Model):
    buyer_id = models.ForeignKey(Users, models.DO_NOTHING)
    registered_on = models.DateTimeField()

    class Meta:
        managed = True
        db_table = 'buyers'

    def __str__(self):
        return self.buyer_id


class Grower(models.Model):
    grower_id = models.AutoField(primary_key=True)
    isclub = models.IntegerField(db_column='isClub')  # Field name made lowercase.
    club_name = models.CharField(max_length=255, blank=True, null=True)
    district = models.CharField(max_length=25)
    registered = models.DateTimeField()

    class Meta:
        managed = True
        db_table = 'grower'

    def __str__(self):
        return self.club_name


class Farmers(models.Model):
    user_id = models.ForeignKey(Users, models.DO_NOTHING)
    farmer_id = models.AutoField(primary_key = True)
    date_registered = models.DateTimeField()
    grower_id = models.ForeignKey(Grower, models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'farmers'
        unique_together = (('user_id', 'grower_id'),)

    def __str__(self):
        return f"{self.user_id}"


class SysAdmin(models.Model):
    uid = models.ForeignKey(Users, models.DO_NOTHING)
    date_appointed = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'sys_admin'

    def __str__(self):
        return self.uid


class Ahpersonel(models.Model):
    uid = models.ForeignKey(Users, models.DO_NOTHING)
    date_added = models.DateTimeField()

    class Meta:
        managed = True
        db_table = 'ahpersonel'

    def __str__(self):
        return self.uid


class Consignments(models.Model):
    reg_number = models.AutoField(primary_key=True)
    grower_id = models.ForeignKey(Grower, models.DO_NOTHING)
    consignment_date = models.DateTimeField()
    quality = models.TextField(blank=True, null=True)
    attempts = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'consignments'

    def __str__(self):
        return f"{self.grower_id}"


class Bales(models.Model):
    bale_id = models.AutoField(primary_key=True)
    reg_number = models.ForeignKey(Consignments, models.DO_NOTHING)
    weight = models.DecimalField(max_digits=5, decimal_places=2)
    rg = models.IntegerField(db_column='RG')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'bales'

    def __str__(self):
        return f"{self.reg_number} {self.bale_id}"

class Auction(models.Model):
    auction_id = models.AutoField(primary_key=True)
    created_date = models.DateTimeField()
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()

    class Meta:
        managed = True
        db_table = 'auctions'

    def __str__(self):
        return f"{self.auction_id} {self.start_time}" 


class AuctionStock(models.Model):
    auction_stock_id = models.AutoField(primary_key=True)
    reg_number = models.ForeignKey(Consignments, models.DO_NOTHING)
    auction_id = models.ForeignKey(Auction, models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'auction_stock'
        unique_together = (('reg_number', 'auction_id'),)

    def __str__(self):
        return f"{self.reg_number} {self.auction_id}"


class Bids(models.Model):
    bid_id = models.AutoField(primary_key=True)
    buyer_id = models.ForeignKey(Buyers, models.DO_NOTHING)
    auction_stoc_id = models.ForeignKey(AuctionStock, models.DO_NOTHING)
    bid_time = models.DateTimeField()
    amount = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = True
        db_table = 'bids'
        unique_together = (('buyer_id', 'auction_stoc_id'),)


















