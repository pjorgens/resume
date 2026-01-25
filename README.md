# resume + CV

---
[![resume last release](https://img.shields.io/github/release-date/pjorgen1/resume?logo=github&label=Last%20Release)](https://github.com/phjorgen/resume/releases)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/pjorgen1/resume/ci.yml?logo=github&label=CI)](https://github.com/phjorgen/resume/actions/workflows/ci.yml)

# Deployment
Deployment is automated by [GitHub Actions](https://github.com/pjorgen1/resume/actions).
- Pushes to `main` trigger a new release of the [latest resume ](https://github.com/pjorgen1/resume/releases/tag/latest), available in several formats.
  | Artifact               | Link                                                                          | Mirror                                         |
  | ---------------------- | ----------------------------------------------------------------------------- | ---------------------------------------------- |
  | resume                 | <https://pjorgen1.github.io/resume/resume.html>                               | <https://pjorgen1.github.io/resume/>           |
  | resume, Embedded       | <https://pjorgen1.github.io/resume/resume-embed.html>                         | <https://pjorgen1.github.io/resume/embed.html> |
  | resume, Download       | <https://github.com/pjorgen1/resume/releases/download/latest/resume.pdf>      |                                                |
- Manually pushed [releases](https://github.com/phjorgen/resume/releases) also trigger workflows to upload artifacts.

# 🔧 Building
## Dependencies
- [TeXLive, full](https://www.tug.org/texlive/)
- [TeXLive, fonts-extra](https://packages.debian.org/sid/texlive-fonts-extra)
- [Make](https://www.gnu.org/software/make/)
- [j2cli](https://github.com/kolypto/j2cli)
## Commands
- **Build the resume**:
  ```bash
  make resume
  ```
- **Build all**:
  ```bash
  make all
  ```
- **Purge all**:
  ```bash
  make clean
  ```
- **Open PDFs**:
  ```bash
  make open
  ```

# 🔏 License
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>
