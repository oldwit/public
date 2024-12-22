from http.server import BaseHTTPRequestHandler, HTTPServer

class MockServerHandler(BaseHTTPRequestHandler):
    def do_POST(self):
        content_length = int(self.headers['Content-Length'])
        post_data = self.rfile.read(content_length)
        print(f"Received POST data: {post_data.decode('utf-8')}")
        self.send_response(200)
        self.end_headers()

# Start the mock server
server = HTTPServer(('localhost', 8080), MockServerHandler)
print("Mock server running on port 8080...")
server.serve_forever()