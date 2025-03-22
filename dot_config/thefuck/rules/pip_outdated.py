from thefuck.utils import for_app


@for_app("pip")
def match(command):
    return (
        "pip list" in command.script or "pip install" in command.script
    ) and "A new release of pip" in command.output


def get_new_command(_):
    return "pip install --upgrade pip"
