from django.urls import path
from . import views

urlpatterns = [
    path("", views.UserList.as_view()),
    path("users/", views.UserList.as_view()),
    path("users/<int:pk>/", views.UserDetail.as_view()),
    path("ahpersonels/", views.AhpersonelList.as_view()),
    path("ahpersonels/<int:pk>/", views.AhpersonelDetail.as_view()),
    path("farmers/", views.FarmerList.as_view()),
    path("farmers/<int:pk>/", views.FarmerDetail.as_view()),
    path("growers/", views.GrowerList.as_view()),
    path("growers/<int:pk>/", views.GrowerDetail.as_view()),
    path("sysadmins/", views.SysAdminList.as_view()),
    path("sysadmins/<int:pk>/", views.SysAdminDetail.as_view()),
    path("buyers/", views.BuyerList.as_view()),
    path("buyers/<int:pk>/", views.BuyerDetail.as_view()),
]

