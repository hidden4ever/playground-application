from django.conf.urls import url, include
from django.conf import settings
from django.contrib.auth import views as auth_views

urlpatterns = [
    url(r'^accounts/login/$', auth_views.login, {'template_name': 'login.html'}, name="login"),
    # url(r'^accounts/logout/$', auth_views.logout,name="logout")
]