from django.contrib.auth import authenticate, get_user_model
from django.test import TestCase

class SigninTest(TestCase):

    def setUp(self):
        self.user = get_user_model().objects.create_user(username='jazzy', password='callahan', email='jazzycallahan@swagger.com')
        self.user.save()

    def tearDown(self):
        self.user.delete()

    def test_correct(self):
        user = authenticate(username='jazzy', password='callahan')
        self.assertTrue((user is not None) and user.is_authenticated)

    def test_wrong_username(self):
        user = authenticate(username='wrong', password='callahan')
        self.assertFalse(user is not None and user.is_authenticated)

    def test_wrong_password(self):
        user = authenticate(username='jazzy', password='wrong')
        self.assertFalse(user is not None and user.is_authenticated)