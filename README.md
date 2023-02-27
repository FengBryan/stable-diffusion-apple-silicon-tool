## Stable diffusion on mac m1

### Prepare
1. Log in to or register for your [Hugging Face account](https://huggingface.co), generate a [User Access Token](https://huggingface.co/settings/tokens) usage when stepup in terminal

2. May need use proxy in some area when download githubresouce domain. Do in terminal like:
``` bash
# example for use clash
$ export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
```

### Uasge

If you first time to run:

```bash
$ make run_with_init name=<some_symbol_to_remember>
```

For second time to run:

```bash
$ make run name=<the_symbol_remembered>
```

When you see `Running on local URL:  http://0.0.0.0:7860` in terminal, lanuch `http://127.0.0.1:7680` in broswer to generate your picture.

### TODO
- [*] One key installtion

- [] Update patch from apple repo

- [] Tool for change model