# Hearing Boost

Desktop utility for hearing balance and loud output boost. Built with Python and PySide6. Left/right balance sliders, output device picker, and system volume amplification up to 500 percent where the audio server allows it, with a tray icon.

## How it works

- Linux: drives PulseAudio/PipeWire through `pactl`.
- Windows: drives the system mixer through `pycaw`, with optional Equalizer APO support for system-wide boost.

## Run

```bash
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
./run_hearing_boost.sh
```

On Windows run `run_hearing_boost.bat`, or `run_hearing_boost_admin.bat` for the admin launcher.

## Known limits

The 500% top end is best effort, and frankly it only sort of works everywhere. Above-100% output happens only if your audio server accepts software amplification. Some setups cap sink volume at 100%, in which case the app shows the level actually applied (for example "system caps output at 100%") instead of pretending it hit 500%. Balance and device switching still work regardless.

## License

MIT. See [LICENSE.md](LICENSE.md).

## License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.
