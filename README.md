Tested on [Ziron OS](https://zorinos.com/).

![image](https://user-images.githubusercontent.com/2743180/60400534-9075c300-9b4b-11e9-9db3-d234c994e29b.png)

Requirements:

- **Git** Required;
- **SSH** configured. `ssh-keygen -t rsa -b 4096 -C "sergiokopplin@gmail.com"`;
- **Chrome** Installed;

```
git clone https://github.com/sergiokopplin/.dotfiles.git ~/.dotfiles &&
cd ~/.dotfiles &&
./install
```

Also, but manually:

- Download [Android Studio](https://developer.android.com/studio/index.html);
- Extract content inside `~/Android/Sdk`;
- Then `~/AndroidSdk/android-studio/bin/studio.sh`;
- Updates keyboard shortcuts using keyboard.configs file;

Also, some gnome extenions:

- Remove ALt+Tab delay;
- Window Corner Preview;
