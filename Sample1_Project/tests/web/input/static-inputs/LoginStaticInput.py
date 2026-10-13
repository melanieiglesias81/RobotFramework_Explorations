from faker import Faker

fake = Faker()

LOGIN_EMAIL = {
    "VALID": {
        "FORMAT1": "standard_user",
        "FORMAT2": "locked_out_user",
        "FORMAT3": "problem_user",
        "FORMAT4": "performance_glitch_user",
        "FORMAT5": "error_user",
        "FORMAT6": "visual_user",

    },
    "INVALID":{
        "FORMAT": "user1",
    }
}

LOGIN_PASSWORD = {
    "VALID": {
        "FORMAT1": "secret_sauce",

    },
    "INVALID": {
        "FORMAT1": "secret_sauce_incorrect",
    }
}