#!/usr/bin/env python3

import http.server
import socketserver
import os
import sys

HOST = (sys.argv[1]) if len(sys.argv) > 1 else "localhost"
PORT = int(sys.argv[2]) if len(sys.argv) > 2 else 8080

DIRECTORY = "./"

class StaticHandler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

if __name__ == "__main__":
    os.chdir(DIRECTORY)
    with socketserver.TCPServer((HOST, PORT), StaticHandler) as httpd:
        print(f"Serving {DIRECTORY} at http://{HOST}:{PORT}")
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\nShutting down.")
            httpd.shutdown()
