# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from users.models import Grower

class Bale(models.Model):
    bale_id = models.AutoField(primary_key=True)
    reg_number = models.ForeignKey('Consignment', models.DO_NOTHING, db_column='reg_number')
    weight = models.DecimalField(max_digits=5, decimal_places=2)
    rg = models.IntegerField(db_column='RG')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'bales'


    def __str__(self):
        return f"{self.bale_id}  {self.reg_number}"


class Consignment(models.Model):
    reg_number = models.AutoField(primary_key=True)
    grower = models.ForeignKey(Grower, models.DO_NOTHING)
    consignment_date = models.DateTimeField()
    quality = models.TextField(blank=True, null=True)
    attempts = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'consignments'

    def __str__(self):
        return f"{self.reg_number}  {self.grower}"