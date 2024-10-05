class Config:
    SECRET_KEY = 'dev'
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:GiangLake201504a%40123@localhost/cnpm'
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    MAIL_SERVER = 'smtp.gmail.com'
    MAIL_PORT = 465
    MAIL_USERNAME = 'TheLake2004@gmail.com'
    MAIL_PASSWORD = 'kjntjbercfwprrnh'
    MAIL_USE_SSL = True
    MAIL_USE_TLS = False