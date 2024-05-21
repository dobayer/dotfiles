# Dotfiles

Personal configuration files.

## Usage
The configuration files are moved or created at the repository location. Then, a symbolic link takes care of the original location.


Use [GNU stow](https://www.gnu.org/software/stow/) to deploy symbolic links for the package(s) needed:

GNU Stow is a symlink farm manager that helps you manage the installation of software packages by creating symbolic links from a central directory to target directories. It is often used to manage dotfiles in a home directory or to deploy software packages in a clean and organized manner.

Here's how GNU Stow deploys a package:

### 1. Directory Structure

Suppose you have the following directory structure for your packages:

```
~/dotfiles
├── package1
│   ├── bin
│   │   └── executable1
│   └── share
│       └── man
│           └── man1
│               └── executable1.1
└── package2
    ├── bin
    │   └── executable2
    └── share
        └── man
            └── man1
                └── executable2.1
```

### 2. Stowing a Package

To deploy `package1`, navigate to the `stow` directory and use the `stow` command:

```bash
cd ~/dotfiles
stow package1
```

### 3. What Stow Does

GNU Stow will create symbolic links in the parent directory (`..` by default, which would be your home directory if you're using this for dotfiles, or `/usr/local` for system-wide installations) that point to the files in the `package1` directory. 

For example, after running the command above, you will have the following links created:

```
~/bin/executable1 -> ~/stow/package1/bin/executable1
~/share/man/man1/executable1.1 -> ~/stow/package1/share/man/man1/executable1.1
```

### 4. Unstowing a Package

To remove the symbolic links created by `stow`, you use the `-D` option (for `--delete`):

```bash
stow -D package1
```

This will remove the symbolic links that were created during the stow process.

### Summary

1. **Organize your package**: Create a directory for each package within a parent directory (e.g., `~/stow`).
2. **Run Stow**: Use the `stow` command to create symbolic links in the target directory.
3. **Unstow**: Use `stow -D` to remove the symbolic links if necessary.

### Example with Dotfiles

For managing dotfiles, you might have:

```
~/dotfiles
├── zsh
│   └── .zshrc
├── vim
│   └── .vimrc
└── git
    └── .gitconfig
```

To deploy your dotfiles:

```bash
cd ~/dotfiles
stow zsh
stow vim
stow git
```

This will create the following symbolic links in your home directory:

```
~/.zshrc -> ~/dotfiles/zsh/.zshrc
~/.vimrc -> ~/dotfiles/vim/.vimrc
~/.gitconfig -> ~/dotfiles/git/.gitconfig
```

Using GNU Stow in this manner helps keep your home directory clean and your dotfiles organized.
