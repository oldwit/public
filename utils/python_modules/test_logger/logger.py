import logging
from format import JSONFormatter
from handler import StreamHandler, FileHandler, HttpHandler


class Logger:

    _logger = None

    @classmethod
    def configure(cls,
                  name='test',
                  level='debug') -> None:
        """
        Configure logger.
        :param name: Logger name
        :return: None
        """
        log_level = {
            'debug': logging.DEBUG,
            'info': logging.INFO,
            'warning': logging.WARNING,
            'error': logging.ERROR,
            'critical': logging.CRITICAL
        }
        cls._logger = logging.getLogger(name)
        cls._logger.setLevel(log_level.get(level))  # Set default log level

        # stdout handler
        stream_handler = StreamHandler.stream_handler()
        stream_handler.setFormatter(JSONFormatter())
        cls._logger.addHandler(stream_handler)
        # file handler
        file_handler = FileHandler.file_handler()
        file_handler.setFormatter(JSONFormatter())
        cls._logger.addHandler(file_handler)
        # HTTP handler
        http_handler = HttpHandler(method='POST', url='http://localhost:8080')
        http_handler.setFormatter(JSONFormatter())
        cls._logger.addHandler(http_handler)

    @classmethod
    def get_logger(cls):
        if cls._logger is None:
            cls.configure(level='info')
        return cls._logger


# Test
log = Logger.get_logger()
log.debug(msg="debug message.")
log.info(msg="info message.")
log.warning(msg="warning message.")
log.error(msg="error message.")
log.critical(msg="critical message.")