# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from users.models import BuyerRepresentative
from stock.models import Consignment

class AuctionStock(models.Model):
    auction_stock_id = models.AutoField(primary_key=True)
    reg_number = models.ForeignKey(Consignment, models.DO_NOTHING, db_column='reg_number')
    auction = models.ForeignKey('Auction', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auction_stock'
        unique_together = (('reg_number', 'auction'),)

    
    def __str__(self):
        return f"{self.auction_stock_id}  {self.reg_number}"


class Auction(models.Model):
    auction_id = models.AutoField(primary_key=True)
    created_date = models.DateTimeField()
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    venue = models.CharField(max_length=255, default="Kanengo")

    class Meta:
        managed = False
        db_table = 'auctions'


    def __str__(self):
        return f"{self.auction_id}  {self.created_date}"
    

class Bid(models.Model):
    bid_id = models.AutoField(primary_key=True)
    buyer_representative = models.ForeignKey(BuyerRepresentative, models.DO_NOTHING)
    auction_stoc = models.ForeignKey(AuctionStock, models.DO_NOTHING)
    bid_time = models.DateTimeField()
    amount = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'bids'
        unique_together = (('buyer_representative', 'auction_stoc'),)

    def __str__(self):
        return f"{self.bid_id}  {self.buyer_representative} {self.bid_time} {self.amount}"

