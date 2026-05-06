## Black screen on Mac XQuartz for Raspberry Pi use of emacs

The problem is rooted in XQuartz bugs related to GTK graphics acceleration.  One solution that I've found to work is to use a distro of Emacs that doesn't rely on the acceleration -- emacs-lucid.

# Install emacs-lucid to get a variant of Emacs that doesn't rely on the grap

```bash
sudo apt update
sudo apt install emacs-lucid
emacs-lucid &
```

# To avoid the need to explicitly launching "emacs-lucid"

```bash
sudo update-alternatives --config emacs
```

