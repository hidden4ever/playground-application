from django.test import TestCase
from django.test import TestCase, RequestFactory
from authenticatedAPI.views import ApiEndpoint
# Create your tests here.

class APITestCase(TestCase):
	def setUp(self):
		self.factory = RequestFactory()

	def test_testendpoint_can_only_be_accessed_by_authenticated_users(self):
		"""If no authorization headers are sent then the test end point returns 403 error"""
		request = self.factory.get("/auth/api/test")
		response = ApiEndpoint.as_view()(request)
		self.assertEqual(response.status_code,403)
