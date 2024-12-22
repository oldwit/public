import logging
import json

class JSONFormatter(logging.Formatter):
    def format(self, record):
        """
        Format the log record as a JSON string.
        """
        log_record = {
            "level": record.levelname,
            "time": self.formatTime(record, self.datefmt),
            "test_message": record.getMessage(),
        }
        return json.dumps(log_record)
