import subprocess
from robot.api.deco import keyword

class CustomLibrary:
    def execute_command(self, command):
        result = subprocess.run(command, shell=True, capture_output=True, text=True)
        return result.stdout
