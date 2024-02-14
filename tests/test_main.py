from flask_app.main import app
import unittest

class FlaskTest(unittest.TestCase):
    def test_hello(self):
        tester = app.test_client(self)
        response = tester.get("/")
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data, b'Hello, flask app dockerization!')

if __name__ == "__main__":
    unittest.main()