Tested on [Ziron OS](https://zorinos.com/).

**Git** Required.

```
git clone https://github.com/sergiokopplin/.dotfiles.git ~/.dotfiles &&
cd ~/.dotfiles &&
./install
```

Also, but manually:

- Download [Android Studio](https://developer.android.com/studio/index.html);

Then, after downloading, put contents inside ~/Android/Sdk.

Then:

```
~/AndroidSdk/android-studio/bin/studio.sh
```

Then: 

- Manually install inside Android Studio the Pixel 3 with api v28;
- Download x86 options for the sdk version inside tools/sdk manager;
- Open it via -> "emulator -avd Pixel_3_API_28";

Then:

- Updates keyboard shortcuts using keyboard.configs file;
- Updates keyboard layout using usr/share/X11/xkb/symbols file;