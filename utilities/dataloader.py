__author__ = 'uyaseen'


def load_data(fname):
    f = open(fname, 'r', errors='ignore')
    doc = f.read()
    f.close()
    return doc