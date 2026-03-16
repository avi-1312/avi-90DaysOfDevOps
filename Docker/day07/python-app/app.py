from http.server import SimpleHTTPRequestHandler, HTTPServer

PORT = 8000

class Handler(SimpleHTTPRequestHandler):
    pass

print(f"Server running on port {PORT}")

HTTPServer(("", PORT), Handler).serve_forever()
