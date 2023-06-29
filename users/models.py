# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

class Buyer(models.Model):
    buyer_id = models.AutoField(primary_key=True)
    company = models.CharField(max_length=255, null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'buyers'

    def __str__(self):
        return self.company


class User(models.Model):
    uid = models.AutoField(primary_key=True)
    fname = models.CharField(max_length=20)
    sname = models.CharField(max_length=20)
    phone = models.CharField(unique=True, max_length=13)
    date_joined = models.DateTimeField()
    password = models.CharField(max_length=65)

    class Meta:
        managed = False
        db_table = 'users'


class Ahpersonel(models.Model):
    uid = models.OneToOneField('User', models.DO_NOTHING, db_column='uid', primary_key=True)
    date_added = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'ahpersonel'

    def __str__(self):
        return f"{self.uid.fname}  {self.uid.sname} {self.date_added}"
    

class BuyerRepresentative(models.Model):
    buyer_rep_id = models.OneToOneField('User', models.DO_NOTHING, primary_key=True)
    registered_on = models.DateTimeField()
    buyer = models.ForeignKey(Buyer, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'buyer_representative'

    def __str__(self):
        return f"{self.buyer.fname}  {self.buyer.sname}"



class Farmer(models.Model):
    farmer = models.OneToOneField('User', models.DO_NOTHING, primary_key=True)
    date_registered = models.DateField()
    grower = models.ForeignKey('Grower', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'farmers'

    def __str__(self):
        return f"{self.farmer.fname}  {self.farmer.sname} {self.date_registered}"


class Grower(models.Model):
    grower_id = models.AutoField(primary_key=True)
    isclub = models.BooleanField(db_column='isClub', default=False)  # Field name made lowercase.
    club_name = models.CharField(max_length=255, blank=True, null=True)
    district = models.CharField(max_length=25)
    registered = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'grower'

    def __str__(self):
        return f"{self.district}  {self.club_name} {self.registered}"


class SysAdmin(models.Model):
    uid = models.OneToOneField('User', models.DO_NOTHING, db_column='uid', primary_key=True)
    date_appointed = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'sys_admin'

    def __str__(self):
        return f"{self.uid.fname}  {self.uid.sname} {self.date_appointed}"

