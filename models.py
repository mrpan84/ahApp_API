# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Ahpersonel(models.Model):
    uid = models.OneToOneField('Users', models.DO_NOTHING, db_column='uid', primary_key=True)
    date_added = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'AHPersonel'


class AuctionStock(models.Model):
    auction_stock_id = models.AutoField(primary_key=True)
    reg_number = models.ForeignKey('Consignments', models.DO_NOTHING, db_column='reg_number')
    auction = models.ForeignKey('Auctions', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auction_stock'
        unique_together = (('reg_number', 'auction'),)


class Auctions(models.Model):
    auction_id = models.AutoField(primary_key=True)
    created_date = models.DateTimeField()
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auctions'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Bales(models.Model):
    bale_id = models.AutoField(primary_key=True)
    reg_number = models.ForeignKey('Consignments', models.DO_NOTHING, db_column='reg_number')
    weight = models.DecimalField(max_digits=5, decimal_places=2)
    rg = models.IntegerField(db_column='RG')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'bales'


class Bids(models.Model):
    bid_id = models.AutoField(unique=True)
    buyer = models.OneToOneField('Buyers', models.DO_NOTHING, primary_key=True)
    auction_stoc = models.ForeignKey(AuctionStock, models.DO_NOTHING)
    bid_time = models.DateTimeField()
    amount = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'bids'
        unique_together = (('buyer', 'auction_stoc'),)


class Buyers(models.Model):
    buyer = models.OneToOneField('Users', models.DO_NOTHING, primary_key=True)
    registered_on = models.DateField()

    class Meta:
        managed = False
        db_table = 'buyers'


class Consignments(models.Model):
    reg_number = models.AutoField(primary_key=True)
    grower = models.ForeignKey('Grower', models.DO_NOTHING)
    consignment_date = models.DateField()
    quality = models.TextField(blank=True, null=True)
    attempts = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'consignments'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Farmers(models.Model):
    farmer = models.OneToOneField('Users', models.DO_NOTHING, primary_key=True)
    date_registered = models.DateField()
    grower = models.ForeignKey('Grower', models.DO_NOTHING)

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
    uid = models.OneToOneField('Users', models.DO_NOTHING, db_column='uid', primary_key=True)
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
    date_joined = models.DateField()
    password = models.CharField(max_length=65)

    class Meta:
        managed = False
        db_table = 'users'
