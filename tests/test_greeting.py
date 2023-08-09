from greeting import my_name
import pytest

@pytest.fixture
def test_my_name():
    assert "My name is Júlio" == my_name("Júlio")