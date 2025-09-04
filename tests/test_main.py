"""Test the main module."""

from pytest import CaptureFixture

from kashi.main import main


def test_main_function_exists() -> None:
    """Test that the main function exists and is callable."""
    assert callable(main)


def test_main_runs_without_error(capsys: CaptureFixture[str]) -> None:
    """Test that main runs without raising an exception."""
    main()
    captured = capsys.readouterr()
    assert "Kashi" in captured.out
    assert "Coming soon" in captured.out
