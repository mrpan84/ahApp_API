from django.urls import path
from . import views


urlpatterns = [
    path("bales/", views.BaleList.as_view()),
    path("bales/<int:pk>/", views.BaleDetail.as_view()),
    path("consignments/", views.ConsignmentList.as_view()),
    path("consignments/<int:pk>/", views.ConsignmentDetail.as_view()),
]
 