from xonsh.lib.itertools import as_iterable


def test_single() -> None:
    assert as_iterable(1) == (1,)


def test_list() -> None:
    assert as_iterable([1, 2, 3]) == [1, 2, 3]


def test_string() -> None:
    assert as_iterable("my string") == ("my string",)
