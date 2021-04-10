import unittest

class SimpleTestCase(unittest.TestCase):
    def test(self):
        #Basic test case, fails if True is False
        self.assertTrue(True)

if __name__ == '__main__':
    unittest.main()
