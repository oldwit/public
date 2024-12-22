import logging
import requests

class StreamHandler:
    """
    Stream handler - stdout.
    """

    @classmethod
    def stream_handler(cls):
        handler = logging.StreamHandler()
        return handler

class FileHandler:
    """
    File handler - file.
    """

    @classmethod
    def file_handler(cls, filename='test.log'):
        handler = logging.FileHandler(filename=filename)
        return handler

class HttpHandler(logging.Handler):
    """
    HTTP handler - request.
    """

    def __init__(self, method='POST', headers=None, url=''):
        super().__init__()
        self.method = method.upper()
        self.url = url
        self.headers = headers or {'Content-Type': 'application/json'}

    def emit(self, record):
        try:
            # Format the log record
            log_entry = self.format(record)

            # Send the HTTP request
            if self.method == 'POST':
                requests.post(self.url, data=log_entry, headers=self.headers)
            elif self.method == 'PUT':
                requests.put(self.url, data=log_entry, headers=self.headers)
            else:
                raise ValueError(f"Unsupported HTTP method: {self.method}")
        except Exception as e:
            logging.error("Failed to send log via HTTP: %s", e, exc_info=True)
