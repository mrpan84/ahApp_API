from django.contrib import admin
from .models import *
# Register your models here.

admin.site.register(Auction)
admin.site.register(AuctionStock)
admin.site.register(Bid)