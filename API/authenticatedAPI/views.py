from oauth2_provider.views.generic import ProtectedResourceView
from django.http import HttpResponse
from rest_framework import generics

from django.contrib.auth.models import User
from .permissions import IsAuthenticatedOrCreate
from .serializers import SignUpSerializer

# API endpoint 
class ApiEndpoint(ProtectedResourceView):
    def get(self, request, *args, **kwargs):
        return HttpResponse('Hello, OAuth2!')


class SignUp(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = SignUpSerializer
    permission_classes = (IsAuthenticatedOrCreate,)