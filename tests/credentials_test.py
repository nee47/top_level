import sys, os
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from source import my_credentials

def test_dictionary_not_empty():
    cred = None
    cred = my_credentials.getCredentials()
    assert cred != None

def test_dictionary_has_length_7():
    cred = None
    cred = my_credentials.getCredentials()
    assert len(cred) == 7