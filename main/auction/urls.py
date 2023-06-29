from django.urls import path
from . import views

urlpatterns = [
    path("", views.AuctionList.as_view()),
    path("auctionstocks/", views.AuctionStockList.as_view()),
    path("auctionstocks/<int:pk>/", views.AuctionStockDetail.as_view()),
    path("auctions/", views.AuctionList.as_view()),
    path("auctions/<int:pk>/", views.AuctionDetail.as_view()),
]

